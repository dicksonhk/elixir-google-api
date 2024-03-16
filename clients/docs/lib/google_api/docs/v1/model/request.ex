# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Docs.V1.Model.Request do
  @moduledoc """
  A single update to apply to a document.

  ## Attributes

  *   `mergeTableCells` (*type:* `GoogleApi.Docs.V1.Model.MergeTableCellsRequest.t`, *default:* `nil`) - Merges cells in a table.
  *   `deleteParagraphBullets` (*type:* `GoogleApi.Docs.V1.Model.DeleteParagraphBulletsRequest.t`, *default:* `nil`) - Deletes bullets from paragraphs.
  *   `insertPageBreak` (*type:* `GoogleApi.Docs.V1.Model.InsertPageBreakRequest.t`, *default:* `nil`) - Inserts a page break at the specified location.
  *   `createFooter` (*type:* `GoogleApi.Docs.V1.Model.CreateFooterRequest.t`, *default:* `nil`) - Creates a footer.
  *   `updateTableCellStyle` (*type:* `GoogleApi.Docs.V1.Model.UpdateTableCellStyleRequest.t`, *default:* `nil`) - Updates the style of table cells.
  *   `createFootnote` (*type:* `GoogleApi.Docs.V1.Model.CreateFootnoteRequest.t`, *default:* `nil`) - Creates a footnote.
  *   `insertTableRow` (*type:* `GoogleApi.Docs.V1.Model.InsertTableRowRequest.t`, *default:* `nil`) - Inserts an empty row into a table.
  *   `updateTextStyle` (*type:* `GoogleApi.Docs.V1.Model.UpdateTextStyleRequest.t`, *default:* `nil`) - Updates the text style at the specified range.
  *   `replaceNamedRangeContent` (*type:* `GoogleApi.Docs.V1.Model.ReplaceNamedRangeContentRequest.t`, *default:* `nil`) - Replaces the content in a named range.
  *   `replaceAllText` (*type:* `GoogleApi.Docs.V1.Model.ReplaceAllTextRequest.t`, *default:* `nil`) - Replaces all instances of the specified text.
  *   `insertSectionBreak` (*type:* `GoogleApi.Docs.V1.Model.InsertSectionBreakRequest.t`, *default:* `nil`) - Inserts a section break at the specified location.
  *   `deletePositionedObject` (*type:* `GoogleApi.Docs.V1.Model.DeletePositionedObjectRequest.t`, *default:* `nil`) - Deletes a positioned object from the document.
  *   `updateTableRowStyle` (*type:* `GoogleApi.Docs.V1.Model.UpdateTableRowStyleRequest.t`, *default:* `nil`) - Updates the row style in a table.
  *   `updateDocumentStyle` (*type:* `GoogleApi.Docs.V1.Model.UpdateDocumentStyleRequest.t`, *default:* `nil`) - Updates the style of the document.
  *   `insertInlineImage` (*type:* `GoogleApi.Docs.V1.Model.InsertInlineImageRequest.t`, *default:* `nil`) - Inserts an inline image at the specified location.
  *   `insertTableColumn` (*type:* `GoogleApi.Docs.V1.Model.InsertTableColumnRequest.t`, *default:* `nil`) - Inserts an empty column into a table.
  *   `unmergeTableCells` (*type:* `GoogleApi.Docs.V1.Model.UnmergeTableCellsRequest.t`, *default:* `nil`) - Unmerges cells in a table.
  *   `deleteHeader` (*type:* `GoogleApi.Docs.V1.Model.DeleteHeaderRequest.t`, *default:* `nil`) - Deletes a header from the document.
  *   `deleteTableRow` (*type:* `GoogleApi.Docs.V1.Model.DeleteTableRowRequest.t`, *default:* `nil`) - Deletes a row from a table.
  *   `deleteTableColumn` (*type:* `GoogleApi.Docs.V1.Model.DeleteTableColumnRequest.t`, *default:* `nil`) - Deletes a column from a table.
  *   `deleteFooter` (*type:* `GoogleApi.Docs.V1.Model.DeleteFooterRequest.t`, *default:* `nil`) - Deletes a footer from the document.
  *   `pinTableHeaderRows` (*type:* `GoogleApi.Docs.V1.Model.PinTableHeaderRowsRequest.t`, *default:* `nil`) - Updates the number of pinned header rows in a table.
  *   `insertText` (*type:* `GoogleApi.Docs.V1.Model.InsertTextRequest.t`, *default:* `nil`) - Inserts text at the specified location.
  *   `deleteContentRange` (*type:* `GoogleApi.Docs.V1.Model.DeleteContentRangeRequest.t`, *default:* `nil`) - Deletes content from the document.
  *   `updateSectionStyle` (*type:* `GoogleApi.Docs.V1.Model.UpdateSectionStyleRequest.t`, *default:* `nil`) - Updates the section style of the specified range.
  *   `createHeader` (*type:* `GoogleApi.Docs.V1.Model.CreateHeaderRequest.t`, *default:* `nil`) - Creates a header.
  *   `replaceImage` (*type:* `GoogleApi.Docs.V1.Model.ReplaceImageRequest.t`, *default:* `nil`) - Replaces an image in the document.
  *   `updateTableColumnProperties` (*type:* `GoogleApi.Docs.V1.Model.UpdateTableColumnPropertiesRequest.t`, *default:* `nil`) - Updates the properties of columns in a table.
  *   `createNamedRange` (*type:* `GoogleApi.Docs.V1.Model.CreateNamedRangeRequest.t`, *default:* `nil`) - Creates a named range.
  *   `updateParagraphStyle` (*type:* `GoogleApi.Docs.V1.Model.UpdateParagraphStyleRequest.t`, *default:* `nil`) - Updates the paragraph style at the specified range.
  *   `createParagraphBullets` (*type:* `GoogleApi.Docs.V1.Model.CreateParagraphBulletsRequest.t`, *default:* `nil`) - Creates bullets for paragraphs.
  *   `deleteNamedRange` (*type:* `GoogleApi.Docs.V1.Model.DeleteNamedRangeRequest.t`, *default:* `nil`) - Deletes a named range.
  *   `insertTable` (*type:* `GoogleApi.Docs.V1.Model.InsertTableRequest.t`, *default:* `nil`) - Inserts a table at the specified location.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mergeTableCells => GoogleApi.Docs.V1.Model.MergeTableCellsRequest.t() | nil,
          :deleteParagraphBullets =>
            GoogleApi.Docs.V1.Model.DeleteParagraphBulletsRequest.t() | nil,
          :insertPageBreak => GoogleApi.Docs.V1.Model.InsertPageBreakRequest.t() | nil,
          :createFooter => GoogleApi.Docs.V1.Model.CreateFooterRequest.t() | nil,
          :updateTableCellStyle => GoogleApi.Docs.V1.Model.UpdateTableCellStyleRequest.t() | nil,
          :createFootnote => GoogleApi.Docs.V1.Model.CreateFootnoteRequest.t() | nil,
          :insertTableRow => GoogleApi.Docs.V1.Model.InsertTableRowRequest.t() | nil,
          :updateTextStyle => GoogleApi.Docs.V1.Model.UpdateTextStyleRequest.t() | nil,
          :replaceNamedRangeContent =>
            GoogleApi.Docs.V1.Model.ReplaceNamedRangeContentRequest.t() | nil,
          :replaceAllText => GoogleApi.Docs.V1.Model.ReplaceAllTextRequest.t() | nil,
          :insertSectionBreak => GoogleApi.Docs.V1.Model.InsertSectionBreakRequest.t() | nil,
          :deletePositionedObject =>
            GoogleApi.Docs.V1.Model.DeletePositionedObjectRequest.t() | nil,
          :updateTableRowStyle => GoogleApi.Docs.V1.Model.UpdateTableRowStyleRequest.t() | nil,
          :updateDocumentStyle => GoogleApi.Docs.V1.Model.UpdateDocumentStyleRequest.t() | nil,
          :insertInlineImage => GoogleApi.Docs.V1.Model.InsertInlineImageRequest.t() | nil,
          :insertTableColumn => GoogleApi.Docs.V1.Model.InsertTableColumnRequest.t() | nil,
          :unmergeTableCells => GoogleApi.Docs.V1.Model.UnmergeTableCellsRequest.t() | nil,
          :deleteHeader => GoogleApi.Docs.V1.Model.DeleteHeaderRequest.t() | nil,
          :deleteTableRow => GoogleApi.Docs.V1.Model.DeleteTableRowRequest.t() | nil,
          :deleteTableColumn => GoogleApi.Docs.V1.Model.DeleteTableColumnRequest.t() | nil,
          :deleteFooter => GoogleApi.Docs.V1.Model.DeleteFooterRequest.t() | nil,
          :pinTableHeaderRows => GoogleApi.Docs.V1.Model.PinTableHeaderRowsRequest.t() | nil,
          :insertText => GoogleApi.Docs.V1.Model.InsertTextRequest.t() | nil,
          :deleteContentRange => GoogleApi.Docs.V1.Model.DeleteContentRangeRequest.t() | nil,
          :updateSectionStyle => GoogleApi.Docs.V1.Model.UpdateSectionStyleRequest.t() | nil,
          :createHeader => GoogleApi.Docs.V1.Model.CreateHeaderRequest.t() | nil,
          :replaceImage => GoogleApi.Docs.V1.Model.ReplaceImageRequest.t() | nil,
          :updateTableColumnProperties =>
            GoogleApi.Docs.V1.Model.UpdateTableColumnPropertiesRequest.t() | nil,
          :createNamedRange => GoogleApi.Docs.V1.Model.CreateNamedRangeRequest.t() | nil,
          :updateParagraphStyle => GoogleApi.Docs.V1.Model.UpdateParagraphStyleRequest.t() | nil,
          :createParagraphBullets =>
            GoogleApi.Docs.V1.Model.CreateParagraphBulletsRequest.t() | nil,
          :deleteNamedRange => GoogleApi.Docs.V1.Model.DeleteNamedRangeRequest.t() | nil,
          :insertTable => GoogleApi.Docs.V1.Model.InsertTableRequest.t() | nil
        }

  field(:mergeTableCells, as: GoogleApi.Docs.V1.Model.MergeTableCellsRequest)
  field(:deleteParagraphBullets, as: GoogleApi.Docs.V1.Model.DeleteParagraphBulletsRequest)
  field(:insertPageBreak, as: GoogleApi.Docs.V1.Model.InsertPageBreakRequest)
  field(:createFooter, as: GoogleApi.Docs.V1.Model.CreateFooterRequest)
  field(:updateTableCellStyle, as: GoogleApi.Docs.V1.Model.UpdateTableCellStyleRequest)
  field(:createFootnote, as: GoogleApi.Docs.V1.Model.CreateFootnoteRequest)
  field(:insertTableRow, as: GoogleApi.Docs.V1.Model.InsertTableRowRequest)
  field(:updateTextStyle, as: GoogleApi.Docs.V1.Model.UpdateTextStyleRequest)
  field(:replaceNamedRangeContent, as: GoogleApi.Docs.V1.Model.ReplaceNamedRangeContentRequest)
  field(:replaceAllText, as: GoogleApi.Docs.V1.Model.ReplaceAllTextRequest)
  field(:insertSectionBreak, as: GoogleApi.Docs.V1.Model.InsertSectionBreakRequest)
  field(:deletePositionedObject, as: GoogleApi.Docs.V1.Model.DeletePositionedObjectRequest)
  field(:updateTableRowStyle, as: GoogleApi.Docs.V1.Model.UpdateTableRowStyleRequest)
  field(:updateDocumentStyle, as: GoogleApi.Docs.V1.Model.UpdateDocumentStyleRequest)
  field(:insertInlineImage, as: GoogleApi.Docs.V1.Model.InsertInlineImageRequest)
  field(:insertTableColumn, as: GoogleApi.Docs.V1.Model.InsertTableColumnRequest)
  field(:unmergeTableCells, as: GoogleApi.Docs.V1.Model.UnmergeTableCellsRequest)
  field(:deleteHeader, as: GoogleApi.Docs.V1.Model.DeleteHeaderRequest)
  field(:deleteTableRow, as: GoogleApi.Docs.V1.Model.DeleteTableRowRequest)
  field(:deleteTableColumn, as: GoogleApi.Docs.V1.Model.DeleteTableColumnRequest)
  field(:deleteFooter, as: GoogleApi.Docs.V1.Model.DeleteFooterRequest)
  field(:pinTableHeaderRows, as: GoogleApi.Docs.V1.Model.PinTableHeaderRowsRequest)
  field(:insertText, as: GoogleApi.Docs.V1.Model.InsertTextRequest)
  field(:deleteContentRange, as: GoogleApi.Docs.V1.Model.DeleteContentRangeRequest)
  field(:updateSectionStyle, as: GoogleApi.Docs.V1.Model.UpdateSectionStyleRequest)
  field(:createHeader, as: GoogleApi.Docs.V1.Model.CreateHeaderRequest)
  field(:replaceImage, as: GoogleApi.Docs.V1.Model.ReplaceImageRequest)

  field(:updateTableColumnProperties,
    as: GoogleApi.Docs.V1.Model.UpdateTableColumnPropertiesRequest
  )

  field(:createNamedRange, as: GoogleApi.Docs.V1.Model.CreateNamedRangeRequest)
  field(:updateParagraphStyle, as: GoogleApi.Docs.V1.Model.UpdateParagraphStyleRequest)
  field(:createParagraphBullets, as: GoogleApi.Docs.V1.Model.CreateParagraphBulletsRequest)
  field(:deleteNamedRange, as: GoogleApi.Docs.V1.Model.DeleteNamedRangeRequest)
  field(:insertTable, as: GoogleApi.Docs.V1.Model.InsertTableRequest)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.Request do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.Request.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.Request do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
