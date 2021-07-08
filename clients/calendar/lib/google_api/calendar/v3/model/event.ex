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

defmodule GoogleApi.Calendar.V3.Model.Event do
  @moduledoc """


  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `attendeesOmitted` (*type:* `boolean()`, *default:* `false`) - Whether attendees may have been omitted from the event's representation. When retrieving an event, this may be due to a restriction specified by the maxAttendee query parameter. When updating an event, this can be used to only update the participant's response. Optional. The default is False.
  *   `reminders` (*type:* `GoogleApi.Calendar.V3.Model.EventReminders.t`, *default:* `nil`) - Information about the event's reminders for the authenticated user.
  *   `guestsCanSeeOtherGuests` (*type:* `boolean()`, *default:* `true`) - Whether attendees other than the organizer can see who the event's attendees are. Optional. The default is True.
  *   `summary` (*type:* `String.t`, *default:* `nil`) - Title of the event.
  *   `privateCopy` (*type:* `boolean()`, *default:* `false`) - If set to True, Event propagation is disabled. Note that it is not the same thing as Private event properties. Optional. Immutable. The default is False.
  *   `conferenceData` (*type:* `GoogleApi.Calendar.V3.Model.ConferenceData.t`, *default:* `nil`) - The conference-related information, such as details of a Google Meet conference. To create new conference details use the createRequest field. To persist your changes, remember to set the conferenceDataVersion request parameter to 1 for all event modification requests.
  *   `hangoutLink` (*type:* `String.t`, *default:* `nil`) - An absolute link to the Google Hangout associated with this event. Read-only.
  *   `attachments` (*type:* `list(GoogleApi.Calendar.V3.Model.EventAttachment.t)`, *default:* `nil`) - File attachments for the event. Currently only Google Drive attachments are supported.
      In order to modify attachments the supportsAttachments request parameter should be set to true.
      There can be at most 25 attachments per event,
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the event. Can contain HTML. Optional.
  *   `kind` (*type:* `String.t`, *default:* `calendar#event`) - Type of the resource ("calendar#event").
  *   `guestsCanModify` (*type:* `boolean()`, *default:* `false`) - Whether attendees other than the organizer can modify the event. Optional. The default is False.
  *   `attendees` (*type:* `list(GoogleApi.Calendar.V3.Model.EventAttendee.t)`, *default:* `nil`) - The attendees of the event. See the Events with attendees guide for more information on scheduling events with other calendar users. Service accounts need to use domain-wide delegation of authority to populate the attendee list.
  *   `start` (*type:* `GoogleApi.Calendar.V3.Model.EventDateTime.t`, *default:* `nil`) - The (inclusive) start time of the event. For a recurring event, this is the start time of the first instance.
  *   `creator` (*type:* `GoogleApi.Calendar.V3.Model.EventCreator.t`, *default:* `nil`) - The creator of the event. Read-only.
  *   `anyoneCanAddSelf` (*type:* `boolean()`, *default:* `false`) - Whether anyone can invite themselves to the event (deprecated). Optional. The default is False.
  *   `organizer` (*type:* `GoogleApi.Calendar.V3.Model.EventOrganizer.t`, *default:* `nil`) - The organizer of the event. If the organizer is also an attendee, this is indicated with a separate entry in attendees with the organizer field set to True. To change the organizer, use the move operation. Read-only, except when importing an event.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Geographic location of the event as free-form text. Optional.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the event. Optional. Possible values are:  
      - "confirmed" - The event is confirmed. This is the default status. 
      - "tentative" - The event is tentatively confirmed. 
      - "cancelled" - The event is cancelled (deleted). The list method returns cancelled events only on incremental sync (when syncToken or updatedMin are specified) or if the showDeleted flag is set to true. The get method always returns them.
      A cancelled status represents two different states depending on the event type:  
      - Cancelled exceptions of an uncancelled recurring event indicate that this instance should no longer be presented to the user. Clients should store these events for the lifetime of the parent recurring event.
      Cancelled exceptions are only guaranteed to have values for the id, recurringEventId and originalStartTime fields populated. The other fields might be empty.  
      - All other cancelled events represent deleted events. Clients should remove their locally synced copies. Such cancelled events will eventually disappear, so do not rely on them being available indefinitely.
      Deleted events are only guaranteed to have the id field populated.   On the organizer's calendar, cancelled events continue to expose event details (summary, location, etc.) so that they can be restored (undeleted). Similarly, the events to which the user was invited and that they manually removed continue to provide details. However, incremental sync requests with showDeleted set to false will not return these details.
      If an event changes its organizer (for example via the move operation) and the original organizer is not on the attendee list, it will leave behind a cancelled event where only the id field is guaranteed to be populated.
  *   `visibility` (*type:* `String.t`, *default:* `default`) - Visibility of the event. Optional. Possible values are:  
      - "default" - Uses the default visibility for events on the calendar. This is the default value. 
      - "public" - The event is public and event details are visible to all readers of the calendar. 
      - "private" - The event is private and only event attendees may view event details. 
      - "confidential" - The event is private. This value is provided for compatibility reasons.
  *   `gadget` (*type:* `GoogleApi.Calendar.V3.Model.EventGadget.t`, *default:* `nil`) - A gadget that extends this event. Gadgets are deprecated; this structure is instead only used for returning birthday calendar metadata.
  *   `colorId` (*type:* `String.t`, *default:* `nil`) - The color of the event. This is an ID referring to an entry in the event section of the colors definition (see the  colors endpoint). Optional.
  *   `guestsCanInviteOthers` (*type:* `boolean()`, *default:* `true`) - Whether attendees other than the organizer can invite others to the event. Optional. The default is True.
  *   `extendedProperties` (*type:* `GoogleApi.Calendar.V3.Model.EventExtendedProperties.t`, *default:* `nil`) - Extended properties of the event.
  *   `sequence` (*type:* `integer()`, *default:* `nil`) - Sequence number as per iCalendar.
  *   `recurrence` (*type:* `list(String.t)`, *default:* `nil`) - List of RRULE, EXRULE, RDATE and EXDATE lines for a recurring event, as specified in RFC5545. Note that DTSTART and DTEND lines are not allowed in this field; event start and end times are specified in the start and end fields. This field is omitted for single events or instances of recurring events.
  *   `transparency` (*type:* `String.t`, *default:* `opaque`) - Whether the event blocks time on the calendar. Optional. Possible values are:  
      - "opaque" - Default value. The event does block time on the calendar. This is equivalent to setting Show me as to Busy in the Calendar UI. 
      - "transparent" - The event does not block time on the calendar. This is equivalent to setting Show me as to Available in the Calendar UI.
  *   `recurringEventId` (*type:* `String.t`, *default:* `nil`) - For an instance of a recurring event, this is the id of the recurring event to which this instance belongs. Immutable.
  *   `endTimeUnspecified` (*type:* `boolean()`, *default:* `false`) - Whether the end time is actually unspecified. An end time is still provided for compatibility reasons, even if this attribute is set to True. The default is False.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Opaque identifier of the event. When creating new single or recurring events, you can specify their IDs. Provided IDs must follow these rules:  
      - characters allowed in the ID are those used in base32hex encoding, i.e. lowercase letters a-v and digits 0-9, see section 3.1.2 in RFC2938 
      - the length of the ID must be between 5 and 1024 characters 
      - the ID must be unique per calendar  Due to the globally distributed nature of the system, we cannot guarantee that ID collisions will be detected at event creation time. To minimize the risk of collisions we recommend using an established UUID algorithm such as one described in RFC4122.
      If you do not specify an ID, it will be automatically generated by the server.
      Note that the icalUID and the id are not identical and only one of them should be supplied at event creation time. One difference in their semantics is that in recurring events, all occurrences of one event have different ids while they all share the same icalUIDs.
  *   `end` (*type:* `GoogleApi.Calendar.V3.Model.EventDateTime.t`, *default:* `nil`) - The (exclusive) end time of the event. For a recurring event, this is the end time of the first instance.
  *   `updated` (*type:* `DateTime.t`, *default:* `nil`) - Last modification time of the event (as a RFC3339 timestamp). Read-only.
  *   `originalStartTime` (*type:* `GoogleApi.Calendar.V3.Model.EventDateTime.t`, *default:* `nil`) - For an instance of a recurring event, this is the time at which this event would start according to the recurrence data in the recurring event identified by recurringEventId. It uniquely identifies the instance within the recurring event series even if the instance was moved to a different time. Immutable.
  *   `locked` (*type:* `boolean()`, *default:* `false`) - Whether this is a locked event copy where no changes can be made to the main event fields "summary", "description", "location", "start", "end" or "recurrence". The default is False. Read-Only.
  *   `created` (*type:* `DateTime.t`, *default:* `nil`) - Creation time of the event (as a RFC3339 timestamp). Read-only.
  *   `htmlLink` (*type:* `String.t`, *default:* `nil`) - An absolute link to this event in the Google Calendar Web UI. Read-only.
  *   `source` (*type:* `GoogleApi.Calendar.V3.Model.EventSource.t`, *default:* `nil`) - Source from which the event was created. For example, a web page, an email message or any document identifiable by an URL with HTTP or HTTPS scheme. Can only be seen or modified by the creator of the event.
  *   `eventType` (*type:* `String.t`, *default:* `default`) - Specific type of the event. Read-only. Possible values are:  
      - "default" - A regular event or not further specified. 
      - "outOfOffice" - An out-of-office event.
  *   `iCalUID` (*type:* `String.t`, *default:* `nil`) - Event unique identifier as defined in RFC5545. It is used to uniquely identify events accross calendaring systems and must be supplied when importing events via the import method.
      Note that the icalUID and the id are not identical and only one of them should be supplied at event creation time. One difference in their semantics is that in recurring events, all occurrences of one event have different ids while they all share the same icalUIDs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t() | nil,
          :attendeesOmitted => boolean() | nil,
          :reminders => GoogleApi.Calendar.V3.Model.EventReminders.t() | nil,
          :guestsCanSeeOtherGuests => boolean() | nil,
          :summary => String.t() | nil,
          :privateCopy => boolean() | nil,
          :conferenceData => GoogleApi.Calendar.V3.Model.ConferenceData.t() | nil,
          :hangoutLink => String.t() | nil,
          :attachments => list(GoogleApi.Calendar.V3.Model.EventAttachment.t()) | nil,
          :description => String.t() | nil,
          :kind => String.t() | nil,
          :guestsCanModify => boolean() | nil,
          :attendees => list(GoogleApi.Calendar.V3.Model.EventAttendee.t()) | nil,
          :start => GoogleApi.Calendar.V3.Model.EventDateTime.t() | nil,
          :creator => GoogleApi.Calendar.V3.Model.EventCreator.t() | nil,
          :anyoneCanAddSelf => boolean() | nil,
          :organizer => GoogleApi.Calendar.V3.Model.EventOrganizer.t() | nil,
          :location => String.t() | nil,
          :status => String.t() | nil,
          :visibility => String.t() | nil,
          :gadget => GoogleApi.Calendar.V3.Model.EventGadget.t() | nil,
          :colorId => String.t() | nil,
          :guestsCanInviteOthers => boolean() | nil,
          :extendedProperties => GoogleApi.Calendar.V3.Model.EventExtendedProperties.t() | nil,
          :sequence => integer() | nil,
          :recurrence => list(String.t()) | nil,
          :transparency => String.t() | nil,
          :recurringEventId => String.t() | nil,
          :endTimeUnspecified => boolean() | nil,
          :id => String.t() | nil,
          :end => GoogleApi.Calendar.V3.Model.EventDateTime.t() | nil,
          :updated => DateTime.t() | nil,
          :originalStartTime => GoogleApi.Calendar.V3.Model.EventDateTime.t() | nil,
          :locked => boolean() | nil,
          :created => DateTime.t() | nil,
          :htmlLink => String.t() | nil,
          :source => GoogleApi.Calendar.V3.Model.EventSource.t() | nil,
          :eventType => String.t() | nil,
          :iCalUID => String.t() | nil
        }

  field(:etag)
  field(:attendeesOmitted)
  field(:reminders, as: GoogleApi.Calendar.V3.Model.EventReminders)
  field(:guestsCanSeeOtherGuests)
  field(:summary)
  field(:privateCopy)
  field(:conferenceData, as: GoogleApi.Calendar.V3.Model.ConferenceData)
  field(:hangoutLink)
  field(:attachments, as: GoogleApi.Calendar.V3.Model.EventAttachment, type: :list)
  field(:description)
  field(:kind)
  field(:guestsCanModify)
  field(:attendees, as: GoogleApi.Calendar.V3.Model.EventAttendee, type: :list)
  field(:start, as: GoogleApi.Calendar.V3.Model.EventDateTime)
  field(:creator, as: GoogleApi.Calendar.V3.Model.EventCreator)
  field(:anyoneCanAddSelf)
  field(:organizer, as: GoogleApi.Calendar.V3.Model.EventOrganizer)
  field(:location)
  field(:status)
  field(:visibility)
  field(:gadget, as: GoogleApi.Calendar.V3.Model.EventGadget)
  field(:colorId)
  field(:guestsCanInviteOthers)
  field(:extendedProperties, as: GoogleApi.Calendar.V3.Model.EventExtendedProperties)
  field(:sequence)
  field(:recurrence, type: :list)
  field(:transparency)
  field(:recurringEventId)
  field(:endTimeUnspecified)
  field(:id)
  field(:end, as: GoogleApi.Calendar.V3.Model.EventDateTime)
  field(:updated, as: DateTime)
  field(:originalStartTime, as: GoogleApi.Calendar.V3.Model.EventDateTime)
  field(:locked)
  field(:created, as: DateTime)
  field(:htmlLink)
  field(:source, as: GoogleApi.Calendar.V3.Model.EventSource)
  field(:eventType)
  field(:iCalUID)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.Event do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.Event.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.Event do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
