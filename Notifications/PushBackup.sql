select
NotificationHandler.PrimaryId as 'PrimaryId',
WNSPushChannel.ChannelId as 'ChannelIdas',
WNSPushChannel.HandlerId as 'HandlerIdas',
WNSPushChannel.Uri as 'Uri',
datetime((WNSPushChannel.CreatedTime - 116444736000000000)/10000000, 'unixepoch') as 'CreatedTime',
datetime((WNSPushChannel.ExpiryTime - 116444736000000000)/10000000, 'unixepoch') as 'ExpiryTime'
from WNSPushChannel
join NotificationHandler on NotificationHandler.RecordId = WNSPushChannel.HandlerId
order by CreatedTime desc