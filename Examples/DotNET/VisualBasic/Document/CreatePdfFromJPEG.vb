﻿Imports Com.Aspose.PDF.Api
Imports Com.Aspose.PDF.Model
Imports Com.Aspose.Storage.Api

Namespace Document
    Class CreatePdfFromJPEG
        Public Shared Sub Run()
            ' ExStart:1
            Dim pdfApi As New PdfApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            Dim fileName As [String] = "sample-jpeg.pdf"
            Dim templateFile As [String] = "Einstein_JPEG.jpg"
            Dim dataFile As [String] = ""
            Dim templateType As [String] = "jpeg"
            Dim storage As [String] = ""
            Dim folder As [String] = ""

            Try
                ' Upload source file to aspose cloud storage
                storageApi.PutCreate(templateFile, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + templateFile))

                ' Invoke Aspose.PDF Cloud SDK API to create pdf from JPEG
                Dim apiResponse As DocumentResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder)

                If apiResponse IsNot Nothing AndAlso apiResponse.Status.Equals("OK") Then
                    Console.WriteLine("Create PDF from JPEG, Done!")
                    Console.ReadKey()
                End If
            Catch ex As Exception
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            ' ExEnd:1
        End Sub
    End Class
End Namespace
