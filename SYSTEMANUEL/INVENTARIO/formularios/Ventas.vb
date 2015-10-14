﻿Imports logica
Imports pjtAdus
Imports validaciones
Imports System.Drawing.Printing

Public Class Ventas
    Public dtrclientes As DataRow
    Public dtrproductos As DataRow
    Private tventas As New clsMaestros(clsNomTab.eTbl.FacturaVenta)
    Private dtventas As DataTable
    Private tdetalleventa As New clsMaestros(clsNomTab.eTbl.DetalleFacturaV)
    Private dtproducto As DataTable
    Private tproductos As New clsMaestros(clsNomTab.eTbl.Productos)

    Private dtdetalleventa As DataTable

    Public primeraf As Boolean = True
    Public primera As Boolean = True

    Private dtcodfactura As DataTable
    Private codfactura As Integer
    Private consultar As New clsProcesos
    Private clsvalidar As validar

    Public dtdecuento As DataTable

  

    'para la modificacionde la factura
    Public dtclientes As DataTable
    Public dtproductos As DataTable
    Public dtfacturaventas As DataTable
    Public dtdetallefacturaventas As DataTable
    Public donde As String = "here"
    Public contador As Integer
    Public frmdv As DetalleVenta
    Public frmvr As VentasRealizadas
    'Aqui termina los atributos para la modificacion de la factura
    Private llenara As Boolean = False

    'id para el producto y para los proveedores
    Public idproducto As String
    Public idcliente As String

    'para la variable de agregar
    Dim agregarv As Boolean = False


    ' Para los proveedores y productos
    Private tclientes1 As New clsMaestros(clsNomTab.eTbl.Clientes)
    Private dtclientes11 As DataTable

    Private tproductos1 As New clsMaestros(clsNomTab.eTbl.Productos)
    Private dtproductos1 As DataTable
    'aqui termina



    Dim guardado As Boolean = False

    Dim contafactura As Short

    Dim tclientesfinales As New clsMaestros(clsNomTab.eTbl.clientescf)

    'LAS VARIABLES PARA CARGAR LOS DETALLES FACTURA'
    Dim sumas As Double
    Dim iva As Double
    Dim ventatotal As Double

    'VARIABLE PARA LOS FURMULCIOS (INSTANCIA A ELLOS)'
    Dim frmp As New Productos
    Dim frmc As New Clientes

    Dim tipo As Boolean = True

    Public estado As String = "insertando"
    Public guardar As Boolean = False
   

    'Variable para el limite de ventas
    Public numproductos As Short = 0

    'para ver si hay productos
    Public numpr As Short = 0

    Private Sub Ventas_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing

        If donde = "Cotizar" Then
            Dim tfv As New clsMaestros(clsNomTab.eTbl.FacturaVenta)
            Dim dtfv As New clsMaestros(clsNomTab.eTbl.DetalleFacturaV)
            Dim elimd As New clsProcesos

            tfv.Eliminar(codfactura)
            elimd.Ejecutar(" delete from detalleventa where codfacturav = " & codfactura)

        Else
            If estado = "editando" Then
                If guardar = False Then
                    If MsgBox("Desea guardar el documento", MsgBoxStyle.YesNo, "aviso") = MsgBoxResult.Yes Then
                        botguardar_Click(sender, e)
                    End If
                End If

                mdiMain.teclas = False

            Else
                If numpr > 0 Then
                    If Not guardado Then
                        If MsgBox("Desea guardar el documento", MsgBoxStyle.YesNo, "aviso") = MsgBoxResult.Yes Then
                            botguardar_Click(sender, e)
                        Else
                            consultar.Consultar(" delete from detalleventa where codfacturav = '" & codfactura & "'")
                            consultar.Consultar(" delete from facturaventa where codfacturav = " & codfactura)
                        End If
                    End If

                Else
                    consultar.Consultar(" delete from detalleventa where codfacturav = '" & codfactura & "'")
                    consultar.Consultar(" delete from facturaventa where codfacturav = " & codfactura)
                End If
            End If

        End If

  



    End Sub

    Private Sub Ventas_Load(sender As Object, e As EventArgs) Handles MyBase.Load
         Me.CenterToScreen()
        MdiParent = mdiMain
        Try

            If mdiMain.super Then
                Me.botguardar.Text = "Imprimir y Guardar"
            Else
                Me.botguardar.Text = "Guardar"
            End If
            If Me.donde <> "here" Then
                cargardatos()
            End If
        Catch ex As Exception
            MsgBox("Ocurrio un error asegurese de haber llenado todos los campo correctamente razon: " & ex.Message, MsgBoxStyle.OkOnly, "Avise")
        End Try

    End Sub

    Private Sub cargarcp()
        dtclientes11 = tclientes1.Consultar()
        dtproductos1 = tproductos1.Consultar()

        Dim nfp1 As Short = dtclientes11.Rows.Count
        Dim nfp2 As Short = dtproductos1.Rows.Count

    End Sub

    Private Sub cargardatos()
        Try
            If donde = "Cotizar" Then
                idcliente = 1

                Me.texcliente.Visible = False
                Me.combotipo.Visible = False
                Me.comboformapago.Visible = False
                Me.texnumfact.Visible = False
                Me.textiraje.Visible = False
                Me.DateTimePicker1.Visible = False

                Me.lcliente.Visible = False
                Me.ltipo.Visible = False
                Me.ltiraje.Visible = False
                Me.lfecha.Visible = False
                Me.lforma.Visible = False
                Me.lnum.Visible = False

                Me.botguardar.Text = "Imprimir"

            Else
                dtfacturaventas = tventas.Consultar(" where codfacturav = " & codfactura)
                dtclientes = tclientes1.Consultar(" where codcliente = " & dtfacturaventas.Rows(0).Item(3))
                Me.idcliente = dtclientes.Rows(0).Item(0)
                Me.texcliente.Text = dtclientes.Rows(0).Item(1)
                Me.combotipo.Text = dtfacturaventas.Rows(0).Item(2)
                Me.comboformapago.Text = dtfacturaventas.Rows(0).Item(11)
                Me.texnumfact.Text = dtfacturaventas.Rows(0).Item(1)
                Me.textiraje.Text = dtfacturaventas.Rows(0).Item(14)
                Me.DateTimePicker1.Value = dtfacturaventas.Rows(0).Item(4).ToString

                Me.primeraf = False

                Dim num As Double = CDbl(dtfacturaventas.Rows(0).Item(10))
                convertiraletras(num)
                cargarfactura()

                'Cuando todo ha salido bien hace los cargos a las existencias
                Dim c As Double = 0
                For i As Integer = 0 To dtdetallefacturaventas.Rows.Count - 1
                    dtproducto = tproductos.Consultar(" where codproducto = '" + dtdetallefacturaventas.Rows(i).Item(2).ToString + "'")
                    c = CDbl(CDbl(dtproducto.Rows(0).Item(6)) - dtdetallefacturaventas.Rows(i).Item(3))
                    consultar.Consultar(" update productos set existencias = " + c.ToString + " where codproducto = '" + dtdetallefacturaventas.Rows(i).Item(2).ToString + "'")
                Next
            End If
            

        Catch ex As Exception
            MsgBox("Ocurrio un error asegurese de haber llenado todos los campo correctamente", MsgBoxStyle.OkOnly, "Avise")
        End Try

    End Sub


  

    Private Sub texnombrep_Click(sender As Object, e As EventArgs)
        Try
            pjtAdus.Productos.donde = "ventas"
            pjtAdus.Productos.frmv = Me
            pjtAdus.Productos.Show()
            Me.textotalp.Select()
        Catch ex As Exception

        End Try

    End Sub

   
    Private Function validar() As Boolean
        Return True
    End Function


    Private Sub insertar()
        If validar() Then

            If primeraf = True Then
                primeraf = False
                Dim d, m, a, f As String
                d = Me.DateTimePicker1.Value.Day
                m = Me.DateTimePicker1.Value.Month
                a = Me.DateTimePicker1.Value.Year
                f = a + "-" + m + "-" + d

                If Me.combotipo.Text = "Factura" Then
                    If llenara = False Then
                        Dim cf As New clsMaestros(clsNomTab.eTbl.clientescf)
                        Dim dtcf As DataTable
                        Dim ncf As Integer



                        If Not Me.texcliente.Text.ToString = CStr("Consumidor Final").ToString Then
                            cf.Insertar("'" & Me.texcliente.Text.Trim.ToString & "'")
                            dtcf = consultar.Consultar("SELECT  max(idclientescf) FROM clientescf")
                            ncf = CInt(dtcf.Rows(0).Item(0))
                            idcliente = ncf
                        Else
                            idcliente = CInt(1)
                        End If



                        'Codigo para el tiraje'
                        Dim tcodf As New clsProcesos

                        If Me.combotipo.Text.Trim.ToString = "Factura" Then
                            tcodf.Consultar("update tirajes set tirajefa = '" & Me.texnumfact.Text.Trim.ToString & "'")
                        Else
                            tcodf.Consultar("update tirajes set tirajeca = '" & Me.texnumfact.Text.Trim.ToString & "'")
                        End If


                    End If
                Else

                    'Codigo para el tiraje'
                    Dim tcodf As New clsProcesos

                    If Me.combotipo.Text.Trim.ToString = "Factura" Then
                        tcodf.Consultar("update tirajes set tirajefa = '" & Me.texnumfact.Text.Trim.ToString & "'")
                    Else
                        tcodf.Consultar("update tirajes set tirajeca = '" & Me.texnumfact.Text.Trim.ToString & "'")
                    End If

                 
                End If

                'tventas.Insertar("'" & Me.texnumfact.Text.ToString.Trim & "','" & Me.combotipo.Text.ToString & "','" & idcliente & "','" & f & "'," & CDbl(0).ToString & "," & CDbl(0) & "," & CDbl(0).ToString & "," & CDbl(0).ToString & "," & CDbl(0).ToString & "," & CDbl(0).ToString & ",'" & Me.comboformapago.Text.ToString & "','valida','" & Me.textiraje.Text.ToString & "'")
                tventas.Insertar("'" & 0 & "','" & 0 & "','" & 0 & "','" & f & "'," & CDbl(0).ToString & "," & CDbl(0) & "," & CDbl(0).ToString & "," & CDbl(0).ToString & "," & CDbl(0).ToString & "," & CDbl(0).ToString & ",'" & 0 & "','valida','" & 0 & "'")
                dtcodfactura = consultar.Consultar("SELECT  Max(codfacturav) FROM facturaventa")
                codfactura = dtcodfactura.Rows(0).Item(0)
                insertardetalle()
            Else
                insertardetalle()
            End If
        End If

    End Sub


    Private Sub privar()
        Try
            Me.texprecio.Text = ""
            Me.texcantidad.Text = ""
            Me.textotalp.Text = ""
            Me.texnombrep.Text = ""
            Me.texcliente.Enabled = False
            Me.texnumfact.Enabled = False
            Me.combotipo.Enabled = False
            Me.comboformapago.Enabled = False
            Me.DateTimePicker1.Enabled = False
        Catch ex As Exception

        End Try

    End Sub

  

    Private Sub insertardetalle()
        Try

            numpr += 1
            Dim prereal As Double
            Dim ventatotal As Double = CDbl(Me.textotalp.Text.ToString)

            If combotipo.Text.ToString <> "Factura" Then


                ventatotal = Math.Round((ventatotal / 1.13), 2)

            End If

            tdetalleventa.Insertar(CInt(Me.codfactura).ToString & ",'" & idproducto & "'," & CDbl(Me.texcantidad.Text).ToString & ",0," & prereal & ",0," & ventatotal & ", 0 ," & CDbl(Me.texprecio.Text))
            privar()

            cargarfactura()

        Catch ex As Exception
            MsgBox("Ocurrio un error a la hora de insertar el articulo razon: " + ex.Message, MsgBoxStyle.Critical, "Aviso")
        End Try
    End Sub

    Private Sub cargarfactura()
        numproductos = 0
        Try
            sumas = 0.0
            iva = 0.0
            ventatotal = 0.0

            Me.texsumas.Text = "0"
            Me.texiva.Text = "0"
            Me.textotal.Text = ""



            dtdetalleventa = tdetalleventa.Consultar(" where codfacturav = '" + codfactura.ToString + "'")
            Dim nf As Short
            nf = dtdetalleventa.Rows.Count



            If nf = 0 Then
                Me.gridcompra.RowCount = 1
                Me.gridcompra.Rows(0).Cells(0).Value = ""
                Me.gridcompra.Rows(0).Cells(1).Value = ""
                Me.gridcompra.Rows(0).Cells(2).Value = ""
                Me.gridcompra.Rows(0).Cells(3).Value = ""
                Me.gridcompra.Rows(0).Cells(4).Value = ""
                Me.gridcompra.Rows(0).Cells(5).Value = ""
                Me.gridcompra.Rows(0).Cells(6).Value = ""


            Else
                Me.gridcompra.RowCount = nf
            End If

            For i As Integer = 0 To dtdetalleventa.Rows.Count - 1
                numproductos += 1
                If Me.combotipo.Text <> "Factura" Then
                    dtproducto = tproductos.Consultar(" where codproducto = '" + dtdetalleventa.Rows(i).Item(2).ToString & "'")

                    sumas += Math.Round(CDbl(dtdetalleventa.Rows(i).Item(7)), 2)

                    Me.gridcompra.Rows(i).Cells(0).Value = dtdetalleventa.Rows(i).Item(2)
                    Me.gridcompra.Rows(i).Cells(1).Value = dtdetalleventa.Rows(i).Item(3)
                    Me.gridcompra.Rows(i).Cells(2).Value = dtproducto.Rows(0).Item(1)
                    Me.gridcompra.Rows(i).Cells(3).Value = dtdetalleventa.Rows(i).Item(9)
                    Me.gridcompra.Rows(i).Cells(4).Value = "0"
                    Me.gridcompra.Rows(i).Cells(5).Value = "0"
                    Me.gridcompra.Rows(i).Cells(6).Value = dtdetalleventa.Rows(i).Item(7)


                Else
                    dtproducto = tproductos.Consultar(" where codproducto = '" + dtdetalleventa.Rows(i).Item(2).ToString & "'")

                    sumas += Math.Round(CDbl(dtdetalleventa.Rows(i).Item(7)), 2)

                    Me.gridcompra.Rows(i).Cells(0).Value = dtdetalleventa.Rows(i).Item(2)
                    Me.gridcompra.Rows(i).Cells(1).Value = dtdetalleventa.Rows(i).Item(3)
                    Me.gridcompra.Rows(i).Cells(2).Value = dtproducto.Rows(0).Item(1)
                    Me.gridcompra.Rows(i).Cells(3).Value = dtdetalleventa.Rows(i).Item(9)
                    Me.gridcompra.Rows(i).Cells(4).Value = "0"
                    Me.gridcompra.Rows(i).Cells(5).Value = "0"
                    Me.gridcompra.Rows(i).Cells(6).Value = dtdetalleventa.Rows(i).Item(7)


                End If



            Next

            Me.texsumas.Text = CDbl(sumas)
            If Me.combotipo.Text.ToString <> "Factura" Then
                iva = Math.Round((sumas * 0.13), 2)

                Me.texiva.Text = iva

                Me.textotal.Text = CDbl(sumas + iva)
            Else
                Me.textotal.Text = CDbl(sumas)

            End If

            Dim num As Double = CDbl(Me.textotal.Text.ToString)
            convertiraletras(num)



            If Me.combotipo.Text.Trim.ToString = "Factura" Then
                If numproductos >= 11 Then
                    If MsgBox("Se ha alcanzado el limite de productos por factura desea guardar?", MsgBoxStyle.YesNo, "LIMITE") = MsgBoxResult.Yes Then
                        guardardocumento()
                    End If


                End If
            Else

                If numproductos >= 13 Then
                    If MsgBox("Se ha alcanzado el limite de productos por CCF desea guardar?", MsgBoxStyle.YesNo, "LIMITE") = MsgBoxResult.Yes Then
                        guardardocumento()
                    End If

                End If

            End If


        Catch ex As Exception
            MsgBox("Ocurrio un error al momento de llenar registrar el articulo en la factura razon: " + ex.Message, MsgBoxStyle.Critical, "Aviso")
        End Try

    End Sub



    Private Sub texnombrep_Click1(sender As Object, e As EventArgs) Handles texnombrep.Click
        pjtAdus.Productos.donde = "ventas"
        pjtAdus.Productos.frmv = Me
        pjtAdus.Productos.Show()

        
        Me.texcantidad.Select()
        pjtAdus.Productos.Focus()
    End Sub

   
    Dim cantidad, preciot As Double

    Private Sub texcantidad_KeyPress(sender As Object, e As KeyPressEventArgs) Handles texcantidad.KeyPress, texprecio.KeyPress, textotalp.KeyPress, texnumfact.KeyPress
        Try
            e.Handled = onlynumero(e)
            e.Handled = onlynumero(e)
            If (Asc(e.KeyChar)) = 13 Then
                botagregar_Click(sender, e)
            End If
        Catch ex As Exception

        End Try

    End Sub

    Public Function onlynumero(ByVal caracter As System.Windows.Forms.KeyPressEventArgs)

        If (Asc(caracter.KeyChar)) >= 48 And (Asc(caracter.KeyChar)) <= 57 Or _
          (Asc(caracter.KeyChar)) = System.Windows.Forms.Keys.Back Or (Asc(caracter.KeyChar)) = 46 Then
            Return False
        Else
            Return True
        End If
    End Function

    Private Sub texcantidad_KeyUp(sender As Object, e As KeyEventArgs) Handles texcantidad.KeyUp, texprecio.KeyUp
        Try
            If checklibre.Checked <> True Then
                If Me.texprecio.Text = "" Or Me.texcantidad.Text = "" Then
                Else
                    Me.cantidad = CDbl(Me.texcantidad.Text)
                    Me.preciot = CDbl(Me.texprecio.Text)
                    Me.textotalp.Text = cantidad * preciot
                End If
            End If
        Catch ex As Exception
            MsgBox("Ingrese datos en los campos para realizar los calculos", MsgBoxStyle.Critical, "Aviso")
        End Try

    End Sub

    Private Sub botappdescuento_Click(sender As Object, e As EventArgs) Handles botappdescuento.Click
        If primeraf = True Then
            MsgBox("Teene que igresar almenos un articulo para aplicar descuentos", MsgBoxStyle.OkOnly, "Aviso")
        Else
            Me.grubdescuento.Visible = True
        End If
    End Sub



   
    Private Sub combotipo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles combotipo.SelectedIndexChanged
        Try
            Dim dtcodf As DataTable
            Dim tcodf As New clsProcesos
            Dim tt As New clsProcesos
            Dim dttt As DataTable
            Dim n As String = ""
            Dim n1 As Integer = 0

          
            If Me.combotipo.Text.Trim.ToString = "Factura" Then
                dtcodf = tcodf.Consultar("select max(tirajefa) from tirajes")
                dttt = tt.Consultar("select tirajefs from tirajes")
                Me.textiraje.Text = dttt.Rows(0).Item(0).ToString
                Me.texcliente.Text = "Consumidor Final"
            Else
                dtcodf = tcodf.Consultar("select max(tirajeca) from tirajes")
                dttt = tt.Consultar("select tirajecs from tirajes")
                Me.textiraje.Text = dttt.Rows(0).Item(0).ToString

                Me.texcliente.Text = ""
            End If


            If dtcodf.Rows(0).Item(0).ToString = "" Then
                Me.texnumfact.Text = "1"
            Else
                Me.texnumfact.Text = CInt(dtcodf.Rows(0).Item(0)).ToString
            End If

        Catch ex As Exception

        End Try

    End Sub

   

  





    Private Sub imprimir()
        imprimirfactura()

        Me.progresimprimir.Visible = True
        Me.Timerimprimir.Enabled = True
    End Sub



    Private Sub imprimirfactura()
        ' ejemplo simple para imprimir en .NET
        ' Usamos una clase del tipo PrintDocument
        Dim printDoc As New PrintDocument
        'Dim TamañoPersonal As New Printing.PaperSize("Prueba", 650, 425)
        Dim TamañoPersonal As New Printing.PaperSize("Prueba", 800, 850)


        printDoc.DefaultPageSettings.PaperSize = TamañoPersonal
        ' asignamos el método de evento para cada página a imprimir
        AddHandler printDoc.PrintPage, AddressOf print_PrintPage
        ' indicamos que queremos imprimir

        printDoc.Print()
    End Sub

    Private Sub print_PrintPage(ByVal sender As Object, ByVal e As PrintPageEventArgs)

        Dim dtfacturaventa As DataTable
        Dim tfacturaventa As New clsMaestros(clsNomTab.eTbl.FacturaVenta)

        Dim dtdetallefacturaventa As DataTable
        Dim tdetallefacturaventa As New clsMaestros(clsNomTab.eTbl.DetalleFacturaV)

        Dim dtcliente As DataTable
        Dim tcliente As New clsMaestros(clsNomTab.eTbl.clientescf)

        Dim dtproducto As DataTable
        Dim tproducto As New clsMaestros(clsNomTab.eTbl.Productos)



        dtfacturaventa = tfacturaventa.Consultar(" where codfacturav = " & Me.codfactura)
        dtdetallefacturaventa = tdetallefacturaventa.Consultar(" where codfacturav = " & Me.codfactura)
        dtcliente = tcliente.Consultar(" where idclientescf = " & dtfacturaventa.Rows(0).Item(3))



        ' Este evento se producirá cada vez que se imprima una nueva página
        ' imprimir HOLA MUNDO en Arial tamaño 24 y negrita

        ' imprimimos la cadena en el margen izquierdo
        Dim xPos As Single = e.MarginBounds.Left
        ' La fuente a usar
        Dim prFont As New Font("Arial", 8, FontStyle.Italic)
        Dim prFontletras As New Font("Arial", 6, FontStyle.Italic)
        ' la posición superior
        Dim yPos As Single = prFont.GetHeight(e.Graphics)

        'para matener el primer xPos para las sumas
        Dim sumasxpos As Integer
        Dim sumasypos As Integer



        'para el cliente
        yPos += 120
        xPos += 153


        'para la fecha

        Dim fecha As Date = CDate(dtfacturaventa.Rows(0).Item(4))

        e.Graphics.DrawString(fecha.Day, prFont, Brushes.Black, xPos, yPos)
        xPos += 37

        e.Graphics.DrawString(fecha.Month, prFont, Brushes.Black, xPos, yPos)
        xPos += 37
        e.Graphics.DrawString(fecha.Year, prFont, Brushes.Black, xPos, yPos)

        yPos += 22
        xPos = 145

        e.Graphics.DrawString(dtcliente.Rows(0).Item(1), prFont, Brushes.Black, xPos, yPos)

        ''para la direccion
        'yPos += 27
        'xPos -= 380
        'e.Graphics.DrawString(" ", prFont, Brushes.Black, xPos, yPos)

        ''para el nit o dui
        'xPos += 380
        'e.Graphics.DrawString(" ", prFont, Brushes.Black, xPos, yPos)

        'para cant super
        xPos -= 45
        yPos += 85
        sumasxpos = xPos
        sumasypos = yPos
        Dim strp As String
        For i As Integer = 0 To dtdetallefacturaventa.Rows.Count - 1

            'para la cantidad
            e.Graphics.DrawString(dtdetallefacturaventa.Rows(i).Item(3), prFont, Brushes.Black, xPos, yPos)

            'para el nombre o descripcion del produco
            xPos += 40
            dtproducto = tproducto.Consultar(" where codproducto = '" & dtdetallefacturaventa.Rows(i).Item(2) & "'")

            strp = dtproducto.Rows(0).Item(1).ToString

            If strp.Length > 25 Then
                strp = strp.Substring(0, 25)
            End If

            e.Graphics.DrawString(strp, prFont, Brushes.Black, xPos, yPos)

            'para el precio unitario
            xPos += 155
            e.Graphics.DrawString(dtdetallefacturaventa.Rows(i).Item(9), prFont, Brushes.Black, xPos, yPos)

            'para las ventas gravadas
            xPos += 120
            e.Graphics.DrawString(dtdetallefacturaventa.Rows(i).Item(7), prFont, Brushes.Black, xPos, yPos)

            yPos += 23
            xPos -= 315
        Next

        'yPos += 115



        'para las sumas
        xPos = sumasxpos
        yPos = sumasypos
        xPos += 315
        yPos += 247

        e.Graphics.DrawString(dtfacturaventa.Rows(0).Item(5).ToString, prFont, Brushes.Black, xPos, yPos)


        'para los totales
        yPos += 70
        e.Graphics.DrawString(dtfacturaventa.Rows(0).Item(10).ToString, prFont, Brushes.Black, xPos, yPos)





        ' para las numeros letras son


        Dim numletras1 As New NumeroLetras
        Dim nl As String
        numletras1.setnumero(dtfacturaventa.Rows(0).Item(10).ToString)
        nl = numletras1.getnumero().ToString & " dolares "

        If numletras1.getdecimal() > 0 Then
            Dim nn As String
            If numletras1.getdecimal() < 11 Then
                nn = numletras1.getdecimal() & "0"

                nl = nl & "con " & nn & "/100 cent"
            Else
                nl = nl & "con " & numletras1.getdecimal.ToString & "/100 cent"
            End If


        Else
            nl = nl & " con 00/100 cent"
        End If

        xPos -= 330
        yPos -= 55

        e.Graphics.DrawString(nl, prFontletras, Brushes.Black, xPos, yPos)


        '' indicamos que ya no hay nada más que imprimir

        e.HasMorePages = False

    End Sub


    Public Sub imprimecomprobante()
       ' ejemplo simple para imprimir en .NET
        ' Usamos una clase del tipo PrintDocument
        Dim printDoc As New PrintDocument
        'Dim TamañoPersonal As New Printing.PaperSize("Prueba", 650, 425)
        Dim TamañoPersonal As New Printing.PaperSize("Prueba", 750, 850)


        printDoc.DefaultPageSettings.PaperSize = TamañoPersonal
        ' asignamos el método de evento para cada página a imprimir
        AddHandler printDoc.PrintPage, AddressOf print_PrintPage1
        ' indicamos que queremos imprimir

        printDoc.Print()
    End Sub

    Private Sub print_PrintPage1(ByVal sender As Object, ByVal e As PrintPageEventArgs)

      Dim dtfacturaventa As DataTable
        Dim tfacturaventa As New clsMaestros(clsNomTab.eTbl.FacturaVenta)

        Dim dtdetallefacturaventa As DataTable
        Dim tdetallefacturaventa As New clsMaestros(clsNomTab.eTbl.DetalleFacturaV)

        Dim dtcliente As DataTable
        Dim tcliente As New clsMaestros(clsNomTab.eTbl.Clientes)

        Dim dtproducto As DataTable
        Dim tproducto As New clsMaestros(clsNomTab.eTbl.Productos)



        dtfacturaventa = tfacturaventa.Consultar(" where codfacturav = " & Me.codfactura)
        dtdetallefacturaventa = tdetallefacturaventa.Consultar(" where codfacturav = " & Me.codfactura)
        dtcliente = tcliente.Consultar(" where codcliente = " & dtfacturaventa.Rows(0).Item(3))



        ' Este evento se producirá cada vez que se imprima una nueva página
        ' imprimir HOLA MUNDO en Arial tamaño 24 y negrita

        ' imprimimos la cadena en el margen izquierdo
        Dim xPos As Single = e.MarginBounds.Left
        ' La fuente a usar
        Dim prFont As New Font("Arial", 8, FontStyle.Italic)
        Dim prFontletras As New Font("Arial", 6, FontStyle.Italic)
        Dim prFont7 As New Font("Arial", 7, FontStyle.Italic)
        Dim prFont9 As New Font("Arial", 9, FontStyle.Italic)
        ' la posición superior
        Dim yPos As Single = prFont.GetHeight(e.Graphics)

        'para matener el primer xPos para las sumas
        Dim sumasxpos As Integer
        Dim sumasypos As Integer

        yPos += 165
        xPos += 40

        'para el cliente
        e.Graphics.DrawString(dtcliente.Rows(0).Item(1), prFont, Brushes.Black, xPos, yPos)







        'para la fecha

        Dim fecha As Date = CDate(dtfacturaventa.Rows(0).Item(4))
        xPos += 330
        e.Graphics.DrawString(fecha.Day & " / " & fecha.Month & " / " & fecha.Year, prFont9, Brushes.Black, xPos, yPos)


        yPos += 25
        xPos -= 325


        'para la direccion

        e.Graphics.DrawString(dtcliente.Rows(0).Item(5), prFontletras, Brushes.Black, xPos, yPos)

        'para el nrc

        xPos += 270
        e.Graphics.DrawString(dtcliente.Rows(0).Item(3), prFont, Brushes.Black, xPos, yPos)

        'para el giro
        xPos -= 40
        yPos += 20
        e.Graphics.DrawString(dtcliente.Rows(0).Item(4), prFont, Brushes.Black, xPos, yPos)

        'para el nit
        yPos += 20
        xPos += 10
        e.Graphics.DrawString(dtcliente.Rows(0).Item(2), prFont, Brushes.Black, xPos, yPos)

        'para la forma de pago
        yPos += 43
        xPos += 65
        e.Graphics.DrawString(dtfacturaventa.Rows(0).Item(11), prFont, Brushes.Black, xPos, yPos)

        'para cantidad de productos

        yPos += 60
        xPos -= 350
        sumasxpos = xPos
        sumasypos = yPos
        Dim strp As String
        For i As Integer = 0 To dtdetallefacturaventa.Rows.Count - 1

            'para la cantidad
            e.Graphics.DrawString(dtdetallefacturaventa.Rows(i).Item(3), prFont, Brushes.Black, xPos, yPos)

            'para el nombre o descripcion del produco
            xPos += 35
            dtproducto = tproducto.Consultar(" where codproducto = '" & dtdetallefacturaventa.Rows(i).Item(2) & "'")

            strp = dtproducto.Rows(0).Item(1).ToString

            If strp.Length > 45 Then
                strp = strp.Substring(0, 45)
            End If

            e.Graphics.DrawString(strp, prFont, Brushes.Black, xPos, yPos)

            'para el precio unitario
            xPos += 250
            e.Graphics.DrawString(dtdetallefacturaventa.Rows(i).Item(9), prFont, Brushes.Black, xPos, yPos)

            'para las ventas gravadas
            xPos += 130
            e.Graphics.DrawString(dtdetallefacturaventa.Rows(i).Item(7), prFont, Brushes.Black, xPos, yPos)

            yPos += 21
            xPos -= 415
        Next





        'para las sumas
        xPos = sumasxpos
        yPos = sumasypos
        xPos += 405
        yPos += 272

        e.Graphics.DrawString(dtfacturaventa.Rows(0).Item(5).ToString, prFont, Brushes.Black, xPos, yPos)


        'para el iva
        yPos += 60
        e.Graphics.DrawString(dtfacturaventa.Rows(0).Item(7).ToString, prFont, Brushes.Black, xPos, yPos)


        'para los totales
        yPos += 58
        e.Graphics.DrawString(dtfacturaventa.Rows(0).Item(10).ToString, prFont, Brushes.Black, xPos, yPos)





        ' para las numeros letras son


        Dim numletras1 As New NumeroLetras
        Dim nl As String
        numletras1.setnumero(dtfacturaventa.Rows(0).Item(10).ToString)
        nl = numletras1.getnumero().ToString & " dolares "

        If numletras1.getdecimal() > 0 Then
            Dim nn As String
            If numletras1.getdecimal() < 11 Then
                nn = numletras1.getdecimal() & "0"

                nl = nl & "con " & nn & "/100 cent"
            Else
                nl = nl & "con " & numletras1.getdecimal.ToString & "/100 cent"
            End If


        Else
            nl = nl & " con 00/100 cent"
        End If
        xPos = sumasxpos

        yPos -= 98

        e.Graphics.DrawString(nl, prFont9, Brushes.Black, xPos, yPos)


        ' '' indicamos que ya no hay nada más que imprimir

        e.HasMorePages = False

    End Sub



    Private Sub botguardar_Click(sender As Object, e As EventArgs) Handles botguardar.Click
        guardardocumento()
    End Sub

    Private Sub guardardocumento()
        Try
            If donde = "Cotizar" Then
                Dim tfv As New clsMaestros(clsNomTab.eTbl.FacturaVenta)
                Dim dtfv As New clsMaestros(clsNomTab.eTbl.DetalleFacturaV)
                Dim elimd As New clsProcesos

                tfv.Eliminar(codfactura)
                elimd.Ejecutar(" delete from detalleventa where codfacturav = " & codfactura)
                Me.Close()
            Else
                Me.guardado = True
                Dim ella As String = ""
                If combotipo.Text = "Factura" Then
                    ella = "La "
                Else
                    ella = "El "
                End If

                Dim imprimir1 As String = ""

                Dim imprimir2 As String = ella & combotipo.Text.ToString & " esta por imprimirse: Desea continuar?" & vbCrLf _
                          & " La decisión no podrá revertirse"



                'tventas.Insertar("'" & Me.texnumfact.Text.ToString.Trim & "','" & Me.combotipo.Text.ToString & "','" & idcliente & "','" & f & "'," & CDbl(0).ToString & "," & CDbl(0) & "," & CDbl(0).ToString & "," & CDbl(0).ToString & "," & CDbl(0).ToString & "," & CDbl(0).ToString & ",'" & Me.comboformapago.Text.ToString & "','valida','" & Me.textiraje.Text.ToString & "'")


                Dim d, m, a, f As String
                d = Me.DateTimePicker1.Value.Day
                m = Me.DateTimePicker1.Value.Month
                a = Me.DateTimePicker1.Value.Year
                f = a + "-" + m + "-" + d


                consultar.Consultar(" update facturaventa set numfacturav = '" & Me.texnumfact.Text.ToString.Trim & "', tipo = '" & Me.combotipo.Text.ToString & "', codcliente = '" & idcliente & "', fecha = '" & f & "', formadepago = '" & Me.comboformapago.Text.ToString & "', tiraje = '" & Me.textiraje.Text.ToString & "', " & " sumas = " & Me.texsumas.Text.Trim.ToString & ", iva = " & Me.texiva.Text.Trim.ToString & ", total = " & Me.textotal.Text.Trim.ToString & " where codfacturav = " & codfactura)


                Dim c As Double
                For i As Integer = 0 To dtdetalleventa.Rows.Count - 1
                    dtproducto = tproductos.Consultar(" where codproducto = '" & dtdetalleventa.Rows(i).Item(2).ToString & "'")
                    c = CDbl(dtproducto.Rows(0).Item(6)) - CDbl(dtdetalleventa.Rows(i).Item(3))
                    consultar.Consultar(" update productos set existencias = " & c.ToString & " where codproducto = '" & dtdetalleventa.Rows(i).Item(2).ToString & "'")
                Next



                If Me.combotipo.Text = "Factura" Then
                    'imprimir()
                    consultar.Consultar(" update tirajes set tirajefa = " & (CShort(Me.texnumfact.Text.Trim) + 1))
                Else
                    'imprimecomprobante()
                    consultar.Consultar(" update tirajes set tirajeca = " & (CShort(Me.texnumfact.Text.Trim) + 1))
                End If




                'termina la tarea de imprimir

                If mdiMain.super <> True Then
                    Dim tnoti As New clsMaestros(clsNomTab.eTbl.notificaciones)

                    Dim dtnoti As DataTable
                    dtnoti = consultar.Consultar(" SELECT max(orden) FROM notificaciones ")

                    Dim ordenactual As Short

                    If dtnoti.Rows(0).Item(0).ToString = Nothing Then
                        ordenactual = 1
                    Else
                        ordenactual = CShort(dtnoti.Rows(0).Item(0))
                        ordenactual += 1
                    End If





                    tnoti.Insertar(ordenactual & ",'" & Me.combotipo.Text.ToString & "','" & Me.texcliente.Text & "'," & Me.textotal.Text.ToString & "," & codfactura)


                Else
                    If Me.combotipo.Text = "Factura" Then
                        imprimir()

                    Else
                        imprimecomprobante()
                    End If


                End If

                If donde <> "here" Then
                    frmdv.modi = True
                    frmdv.cargarfacturac()
                    frmvr.hacerconsulta()
                    Me.Close()
                End If


                If MsgBox(ella & combotipo.Text & " se guardo exitosamente!!" & vbCrLf _
                          & "Desea ingresar otra venta", MsgBoxStyle.YesNo, "Compra") = MsgBoxResult.Yes Then
                    mdiMain.llama = "venta"
                    Me.Close()
                    mdiMain.timllamar.Enabled = True
                Else
                    Me.Close()
                End If

            End If

        Catch ex As Exception
            MsgBox("Ocurrio un error al ingresar la factura razon: " + ex.Message, MsgBoxStyle.Critical, "Aviso")
        End Try
    End Sub

    Private Sub btneliminar_Click(sender As Object, e As EventArgs) Handles boteliminar.Click, HolaToolStripMenuItem.Click
        Try
            Dim id As Short = Me.gridcompra.CurrentCell.RowIndex
            Dim dtrdetalle As DataRow = dtdetalleventa.Rows(id)

            If MsgBox("Esta seguro de quitar el producto de la factura? ", MsgBoxStyle.YesNo, "Aviso") = MsgBoxResult.Yes Then
                consultar.Consultar("delete from detalleventa where coddetallefacturav = " & dtrdetalle.Item(0))
                numpr -= 1
                cargarfactura()
            End If

        Catch ex As Exception

        End Try

    End Sub



    Private Function correcto() As Boolean
        Dim fl As Boolean = True
        If donde <> "Cotizar" Then
            If texcliente.Text = "" Then
                Me.texcliente.BackColor = Color.Red
                fl = False
            Else
                Me.texcliente.BackColor = Color.White
            End If

            If Me.texnumfact.Text = "" Then
                Me.texnumfact.BackColor = Color.Red
                fl = False
            Else
                Me.texnumfact.BackColor = Color.White
            End If

            If Me.combotipo.Text = "" Then
                Me.combotipo.BackColor = Color.Red
                fl = False
            Else
                Me.combotipo.BackColor = Color.White
            End If

            If Me.comboformapago.Text = "" Then
                Me.comboformapago.BackColor = Color.Red
                fl = False
            Else
                Me.comboformapago.BackColor = Color.White
            End If

            If Me.textiraje.Text = "" Then
                Me.textiraje.BackColor = Color.Red
                fl = False
            Else
                Me.textiraje.BackColor = Color.White
            End If

            If Me.texnombrep.Text = "" Then
                Me.texnombrep.BackColor = Color.Red
                fl = False
            Else
                Me.texnombrep.BackColor = Color.White
            End If

            If Me.texcantidad.Text = "" Then
                Me.texcantidad.BackColor = Color.Red
                fl = False
            Else
                Me.texcantidad.BackColor = Color.White
            End If

            If Me.texprecio.Text = "" Then
                Me.texprecio.BackColor = Color.Red
                fl = False
            Else
                Me.texprecio.BackColor = Color.White
            End If

            If Me.textotalp.Text = "" Then
                Me.textotalp.BackColor = Color.Red
                fl = False
            Else
                Me.textotalp.BackColor = Color.White
            End If

        End If

       
       
        Return fl
    End Function

    Private Sub botagregar_Click(sender As Object, e As EventArgs) Handles botagregar.Click
        If donde = "Cotizar" Then
            agregararticulo()
        Else
            If Me.combotipo.Text.Trim.ToString = "Factura" Then
                If numproductos >= 11 Then
                    If MsgBox("Se ha alcanzado el limite de productos por factura desea guardar?", MsgBoxStyle.YesNo, "LIMITE") = MsgBoxResult.Yes Then
                        guardardocumento()
                    End If

                Else
                    agregararticulo()

                End If
            Else

                If numproductos >= 13 Then
                    If MsgBox("Se ha alcanzado el limite de productos por CCF desea guardar?", MsgBoxStyle.YesNo, "LIMITE") = MsgBoxResult.Yes Then
                        guardardocumento()
                    End If

                Else
                    agregararticulo()

                End If

            End If

        End If
      




    End Sub

    Private Sub agregararticulo()
        If correcto() <> False Then
            agregarv = True

            'limpirando las variables globales






            Try
                If primeraf = False Then

                    Dim can As Double
                    Dim tl As Double
                    Dim f As Boolean = False

                    For i As Integer = 0 To dtdetalleventa.Rows.Count - 1
                        If idproducto = dtdetalleventa.Rows(i).Item(2).ToString Then

                            If combotipo.Text.Trim.ToString <> "Factura" Then
                                can = Math.Round(CDbl(dtdetalleventa.Rows(i).Item(3) + CDbl(Me.texcantidad.Text)), 2)

                                Dim pr As Double = (CDbl(Me.texprecio.Text.Trim.ToString) * can)

                                Dim priva As Double = Math.Round((pr / 1.13), 2)

                                tl = priva

                            Else
                                can = Math.Round(CDbl(dtdetalleventa.Rows(i).Item(3) + CDbl(Me.texcantidad.Text)), 2)
                                tl = Math.Round(CDbl(dtdetalleventa.Rows(i).Item(7)) + CDbl(Me.textotalp.Text.Trim), 2)
                            End If


                            consultar.Consultar("update detalleventa set total = " & tl & ", cantidadunit = " & can.ToString & " where codfacturav = " & codfactura.ToString & " and coddetallefacturav = " & dtdetalleventa.Rows(i).Item(0).ToString)
                            f = True
                            privar()
                            cargarfactura()
                        End If
                    Next

                    If f = False Then
                        If donde <> "Cotizar" Then
                            If CInt(dtrproductos.Item(6)) < CInt(Me.texcantidad.Text.Trim) Then
                                MsgBox("No cuenta con susficientes existencias de este produto para realizar la transaccion", MsgBoxStyle.Critical, "Aviso")
                            Else
                                insertar()
                            End If
                        Else
                            insertar()
                        End If


                    End If
                Else
                    If donde <> "Cotizar" Then
                        If CInt(dtrproductos.Item(6)) < CInt(Me.texcantidad.Text.Trim) Then
                            MsgBox("No cuenta con susficientes existencias de este produto para realizar la transaccion", MsgBoxStyle.Critical, "Aviso")
                        Else
                            insertar()
                        End If
                    Else
                        insertar()
                    End If



                End If


               
            Catch ex As Exception
                MsgBox("ocurrio un error razon: " + ex.Message, MsgBoxStyle.Critical, "Aviso")
            End Try
        Else
            MsgBox("Tiene que llenar todos los campos que esten en rojo", MsgBoxStyle.ApplicationModal, "Aviso")
        End If

    End Sub

    Private Sub convertiraletras(ByVal numero As Double)
        Dim numletras1 As New NumeroLetras
        Dim nl As String
        numletras1.setnumero(numero)
        nl = numletras1.getnumero().ToString & " dolares "

        If numletras1.getdecimal() > 0 Then
            Dim nn As String
            If numletras1.getdecimal() < 11 Then
                nn = numletras1.getdecimal() & "0"

                nl = nl & "con " & nn & "/100 cent"
            Else
                nl = nl & "con " & numletras1.getdecimal.ToString & "/100 cent"
            End If

        Else
            nl = nl
        End If

        Me.lson.Text = nl
    End Sub

   

    Private Sub textotalp_KeyUp(sender As Object, e As KeyEventArgs) Handles textotalp.KeyUp
        Try
            If checklibre.Checked <> True Then
                If Me.textotalp.Text = "" Or Me.texprecio.Text = "" Then
                Else
                    Me.cantidad = CDbl(Me.textotalp.Text)
                    Me.preciot = CDbl(Me.texprecio.Text)
                    Me.texcantidad.Text = Math.Round(cantidad / preciot, 2)
                End If
            End If
        Catch ex As Exception
            MsgBox("Ingrese datos en los campos para realizar los calculos", MsgBoxStyle.Critical, "Aviso")
        End Try

    End Sub

  


    Dim contasegundos As Short = 0
    Private Sub Timerimprimir_Tick(sender As Object, e As EventArgs) Handles Timerimprimir.Tick
        contasegundos += 1
        Me.progresimprimir.Value = contasegundos
        If contasegundos = 100 Then
            Me.Timerimprimir.Enabled = False
            Me.contasegundos = 0
        End If
    End Sub

    Private Sub texcliente_DoubleClick(sender As Object, e As EventArgs) Handles texcliente.DoubleClick
        Try
            frmc.donde = "ventas"
            frmc.frmv = Me
            frmc.Show()
        Catch ex As Exception

        End Try
    End Sub


    Dim dtcli As DataTable
    Dim dtclcf As DataTable
    Dim cf = False, cc As Boolean = False


    'Private Sub texcliente_Enter(sender As Object, e As EventArgs) Handles texcliente.Enter
    '  
    'End Sub

  

    Private Sub texcliente_KeyPress(sender As Object, e As KeyPressEventArgs) Handles texcliente.KeyPress
        If (Asc(e.KeyChar)) = 13 Then
            llenar()
        End If
    End Sub


    Dim entert As Boolean = False

    Private Sub llenar()
        Try
            llenara = True
            If Me.combotipo.Text = "Factura" Then
                Me.texcliente.Text = dtclcf.Rows(0).Item(1).ToString
                Me.idcliente = dtclcf.Rows(0).Item(0).ToString
            Else
             
            End If
            entert = True
        Catch ex As Exception

        End Try

    End Sub


    Private Sub checkimprimir_CheckedChanged(sender As Object, e As EventArgs)

        Me.botguardar.Text = "Imprimir"
        Me.botguardar.Text = "Guardar"
    End Sub

    Private Sub texcliente_LostFocus(sender As Object, e As EventArgs) Handles texcliente.LostFocus
        If Me.texcliente.Text.ToString = "Consumidor Final".ToString Then
            Me.idcliente = 5403
        End If
    End Sub

 
End Class