#!/usr/bin/env bash

curl --silent --header 'Content-Type:application/json' --data '
{
  "size": "0",
  "query": {
    "match_all": {}
  },
  "aggregations": {
    "aspect_ratio": {
      "terms": {
        "field": "references.aspect_ratio.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "asset_state": {
      "terms": {
        "field": "asset_state.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "asset_usage": {
      "terms": {
        "field": "references.asset_usage.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "buyers_pick": {
      "terms": {
        "field": "references.buyers_pick.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "channel_crop": {
      "terms": {
        "field": "references.channel_crop.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "clear_space": {
      "terms": {
        "field": "references.clear_space.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "color": {
      "terms": {
        "field": "references.color.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "has_text": {
      "terms": {
        "field": "references.has_text.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "holiday": {
      "terms": {
        "field": "references.holiday.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "image_set": {
      "terms": {
        "field": "references.image_set.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "image_type": {
      "terms": {
        "field": "references.image_type.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "is_variation": {
      "terms": {
        "field": "references.is_variation.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "material": {
      "terms": {
        "field": "references.material.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "offer_messaging": {
      "terms": {
        "field": "references.offer_messaging.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "offer_type": {
      "terms": {
        "field": "references.offer_type.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "onsite_status": {
      "terms": {
        "field": "references.onsite_status.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "overlay_shape": {
      "terms": {
        "field": "references.overlay_shape.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "overlay_size": {
      "terms": {
        "field": "references.overlay_size.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "overlay_type": {
      "terms": {
        "field": "references.overlay_type.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "pattern": {
      "terms": {
        "field": "references.pattern.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "promo_taxonomy": {
      "terms": {
        "field": "references.promo_taxonomy.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "room_type": {
      "terms": {
        "field": "references.room_type.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "season": {
      "terms": {
        "field": "references.season.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "shot_angle": {
      "terms": {
        "field": "references.shot_angle.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "style": {
      "terms": {
        "field": "references.style.keyword",
        "size": 50,
        "missing": "N/A"
      }
    },
    "taxonomy_subcat": {
      "terms": {
        "field": "references.taxonomy_subcat.keyword",
        "size": 50,
        "missing": "N/A"
      }
    }
  }
}

' localhost:9200/adp-assets/asset/_search | python -m json.tool

