#!/usr/bin/env bash

curl --silent --header 'Content-Type:application/json' --data '
{
  "size": "0",
  "query": {
    "match_all": {}
  },
  "aggs": {
    "aspect_ratio": {
      "terms": {
        "field": "references.aspect_ratio.keyword",
        "size": 100
      }
    },
    "asset_state": {
      "terms": {
        "field": "asset_state.keyword",
        "size": 100
      }
    },
    "asset_usage": {
      "terms": {
        "field": "references.asset_usage.keyword",
        "size": 100
      }
    },
    "buyers_pick": {
      "terms": {
        "field": "references.buyers_pick.keyword",
        "size": 100
      }
    },
    "channel_crop": {
      "terms": {
        "field": "references.channel_crop.keyword",
        "size": 100
      }
    },
    "clear_space": {
      "terms": {
        "field": "references.clear_space.keyword",
        "size": 100
      }
    },
    "color": {
      "terms": {
        "field": "references.color.keyword",
        "size": 100
      }
    },
    "has_text": {
      "terms": {
        "field": "references.has_text.keyword",
        "size": 100
      }
    },
    "holiday": {
      "terms": {
        "field": "references.holiday.keyword",
        "size": 100
      }
    },
    "image_set": {
      "terms": {
        "field": "references.image_set.keyword",
        "size": 100
      }
    },
    "image_type": {
      "terms": {
        "field": "references.image_type.keyword",
        "size": 100
      }
    },
    "is_variation": {
      "terms": {
        "field": "references.is_variation.keyword",
        "size": 100
      }
    },
    "material": {
      "terms": {
        "field": "references.material.keyword",
        "size": 100
      }
    },
    "offer_messaging": {
      "terms": {
        "field": "references.offer_messaging.keyword",
        "size": 100
      }
    },
    "offer_type": {
      "terms": {
        "field": "references.offer_type.keyword",
        "size": 100
      }
    },
    "onsite_status": {
      "terms": {
        "field": "references.onsite_status.keyword",
        "size": 100
      }
    },
    "overlay_shape": {
      "terms": {
        "field": "references.overlay_shape.keyword",
        "size": 100
      }
    },
    "overlay_size": {
      "terms": {
        "field": "references.overlay_size.keyword",
        "size": 100
      }
    },
    "overlay_type": {
      "terms": {
        "field": "references.overlay_type.keyword",
        "size": 100
      }
    },
    "pattern": {
      "terms": {
        "field": "references.pattern.keyword",
        "size": 100
      }
    },
    "promo_taxonomy": {
      "terms": {
        "field": "references.promo_taxonomy.keyword",
        "size": 100
      }
    },
    "room_type": {
      "terms": {
        "field": "references.room_type.keyword",
        "size": 100
      }
    },
    "season": {
      "terms": {
        "field": "references.season.keyword",
        "size": 100
      }
    },
    "shot_angle": {
      "terms": {
        "field": "references.shot_angle.keyword",
        "size": 100
      }
    },
    "style": {
      "terms": {
        "field": "references.style.keyword",
        "size": 100
      }
    },
    "taxonomy_subcat": {
      "terms": {
        "field": "references.taxonomy_subcat.keyword",
        "size": 100
      }
    }
  }
}
' localhost:9200/adp-data/asset/_search | python -m json.tool

