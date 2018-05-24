#!/usr/bin/env bash

# TODO: parse the JSON and stitch the steps together

# this script will read record(s) from the specified Kinesis stream.

LIST_SHARDS="aws --region us-east-1 kinesis list-shards --stream-name LvxTrackingStream"
${LIST_SHARDS}

GET_ITERATOR="aws --region us-east-1 kinesis get-shard-iterator --stream-name LvxTrackingStream --shard-id shardId-000000000000 --shard-iterator-type LATEST"
${GET_ITERATOR}

GET_RECORDS="aws --region us-east-1 kinesis get-records --shard-iterator AAAAAAAAAAFRs7YGlF8RB3Y3NGz+DRJ3yBAuD55FIEfnKpuP9Kf1o+5rjINFxTDe3mlhGVeoj4eCDc5HlxtSb5d585AbI6BF5/dBMMldgopDi/Xg9STTPzdNE8/173RIuSw1Cmsl7ZV09xh8YD6GsJGf1yYlSwkrMx6YTVihgopi4TcZwlKt5+FXU4jhTmYLoMS6rI1pglSIMeLVsRe2tbTN6KxgXHlp --limit 1"
${GET_RECORDS}
