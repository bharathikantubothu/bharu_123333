- dashboard: sravan
  title: Sravan
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: hello_world
      type: looker_column
      explore: order_items
      fields: [inventory_items.count, inventory_items.created_month]
      fill_fields: [inventory_items.created_month]
      sorts: [inventory_items.created_month desc]
      limit: 500
      column_limit: 50
      query_timezone: UTC
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      x_axis_zoom: true
      y_axis_zoom: true
      x_axis_datetime_label: ''
      advanced_vis_config: |-
        {
          series: [{
            color: 'gray',
            formatters: [{
                select: 'value >= 430 AND value <= 1500',
                style: {
                  color: 'purple',
                }
              },
            ]
          }]
        }
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_pivots: {}
