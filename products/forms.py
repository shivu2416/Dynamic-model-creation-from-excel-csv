from django import forms


class ExcelUploadForm(forms.Form):
    excel_file = forms.FileField(label="Upload Excel File")