
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rict <img src="man/figures/logo.png" align="right" height="139" alt="" />

<!-- badges: start -->

<!-- badges: end -->

The goal of `rict` is to provide clean, election tables to accompany
maps.

## Installation

You can install the development version of `rict` from
[GitHub](https://github.com/rict) with:

``` r
pak::pak('christopherkenny/rict')
```

## Example

If you have a `redist_map`, you can call `rict()` to produce a
district-level summary table.

``` r
library(rict)
rict(wv)
```

<div id="fdvovtizzb" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#fdvovtizzb table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#fdvovtizzb thead, #fdvovtizzb tbody, #fdvovtizzb tfoot, #fdvovtizzb tr, #fdvovtizzb td, #fdvovtizzb th {
  border-style: none;
}
&#10;#fdvovtizzb p {
  margin: 0;
  padding: 0;
}
&#10;#fdvovtizzb .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#fdvovtizzb .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#fdvovtizzb .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#fdvovtizzb .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#fdvovtizzb .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#fdvovtizzb .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#fdvovtizzb .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#fdvovtizzb .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#fdvovtizzb .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#fdvovtizzb .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#fdvovtizzb .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#fdvovtizzb .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#fdvovtizzb .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#fdvovtizzb .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#fdvovtizzb .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#fdvovtizzb .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#fdvovtizzb .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#fdvovtizzb .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#fdvovtizzb .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fdvovtizzb .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#fdvovtizzb .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#fdvovtizzb .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#fdvovtizzb .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fdvovtizzb .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#fdvovtizzb .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#fdvovtizzb .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#fdvovtizzb .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fdvovtizzb .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#fdvovtizzb .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#fdvovtizzb .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#fdvovtizzb .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#fdvovtizzb .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#fdvovtizzb .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fdvovtizzb .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#fdvovtizzb .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fdvovtizzb .gt_left {
  text-align: left;
}
&#10;#fdvovtizzb .gt_center {
  text-align: center;
}
&#10;#fdvovtizzb .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#fdvovtizzb .gt_font_normal {
  font-weight: normal;
}
&#10;#fdvovtizzb .gt_font_bold {
  font-weight: bold;
}
&#10;#fdvovtizzb .gt_font_italic {
  font-style: italic;
}
&#10;#fdvovtizzb .gt_super {
  font-size: 65%;
}
&#10;#fdvovtizzb .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#fdvovtizzb .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#fdvovtizzb .gt_indent_1 {
  text-indent: 5px;
}
&#10;#fdvovtizzb .gt_indent_2 {
  text-indent: 10px;
}
&#10;#fdvovtizzb .gt_indent_3 {
  text-indent: 15px;
}
&#10;#fdvovtizzb .gt_indent_4 {
  text-indent: 20px;
}
&#10;#fdvovtizzb .gt_indent_5 {
  text-indent: 25px;
}
&#10;#fdvovtizzb .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#fdvovtizzb div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="district">district</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="pop">pop</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="pop_white">pop_white</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="pop_black">pop_black</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="pop_hisp">pop_hisp</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="pop_aian">pop_aian</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="pop_asian">pop_asian</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="pop_nhpi">pop_nhpi</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="pop_other">pop_other</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="pop_two">pop_two</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="vap">vap</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="vap_white">vap_white</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="vap_black">vap_black</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="vap_hisp">vap_hisp</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="vap_aian">vap_aian</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="vap_asian">vap_asian</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="vap_nhpi">vap_nhpi</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="vap_other">vap_other</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="vap_two">vap_two</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="cd_2010">cd_2010</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="cd_2020">cd_2020</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="pre_20_rep_tru">pre_20_rep_tru</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="pre_20_dem_bid">pre_20_dem_bid</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="ndv">ndv</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="adv_20">adv_20</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="nrv">nrv</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="arv_20">arv_20</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="sample_1">sample_1</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="sample_2">sample_2</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="sample_3">sample_3</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="sample_4">sample_4</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="sample_5">sample_5</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="sample_6">sample_6</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="sample_7">sample_7</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="sample_8">sample_8</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="sample_9">sample_9</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="sample_10">sample_10</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="sample_11">sample_11</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="sample_12">sample_12</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="state">state</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="district" class="gt_row gt_right">1</td>
<td headers="pop" class="gt_row gt_right">896067</td>
<td headers="pop_white" class="gt_row gt_right">805369</td>
<td headers="pop_black" class="gt_row gt_right">36345</td>
<td headers="pop_hisp" class="gt_row gt_right">11331</td>
<td headers="pop_aian" class="gt_row gt_right">1632</td>
<td headers="pop_asian" class="gt_row gt_right">6132</td>
<td headers="pop_nhpi" class="gt_row gt_right">155</td>
<td headers="pop_other" class="gt_row gt_right">2136</td>
<td headers="pop_two" class="gt_row gt_right">32967</td>
<td headers="vap" class="gt_row gt_right">715682</td>
<td headers="vap_white" class="gt_row gt_right">649695</td>
<td headers="vap_black" class="gt_row gt_right">29039</td>
<td headers="vap_hisp" class="gt_row gt_right">7866</td>
<td headers="vap_aian" class="gt_row gt_right">1426</td>
<td headers="vap_asian" class="gt_row gt_right">5030</td>
<td headers="vap_nhpi" class="gt_row gt_right">116</td>
<td headers="vap_other" class="gt_row gt_right">1294</td>
<td headers="vap_two" class="gt_row gt_right">21216</td>
<td headers="cd_2010" class="gt_row gt_right">73</td>
<td headers="cd_2020" class="gt_row gt_right">28</td>
<td headers="pre_20_rep_tru" class="gt_row gt_right">273523</td>
<td headers="pre_20_dem_bid" class="gt_row gt_right">112947</td>
<td headers="ndv" class="gt_row gt_right">112947</td>
<td headers="adv_20" class="gt_row gt_right">112947</td>
<td headers="nrv" class="gt_row gt_right">273523</td>
<td headers="arv_20" class="gt_row gt_right">273523</td>
<td headers="sample_1" class="gt_row gt_right">37</td>
<td headers="sample_2" class="gt_row gt_right">31</td>
<td headers="sample_3" class="gt_row gt_right">36</td>
<td headers="sample_4" class="gt_row gt_right">35</td>
<td headers="sample_5" class="gt_row gt_right">38</td>
<td headers="sample_6" class="gt_row gt_right">33</td>
<td headers="sample_7" class="gt_row gt_right">35</td>
<td headers="sample_8" class="gt_row gt_right">36</td>
<td headers="sample_9" class="gt_row gt_right">31</td>
<td headers="sample_10" class="gt_row gt_right">31</td>
<td headers="sample_11" class="gt_row gt_right">37</td>
<td headers="sample_12" class="gt_row gt_right">36</td>
<td headers="state" class="gt_row gt_left">WV</td></tr>
    <tr><td headers="district" class="gt_row gt_right">2</td>
<td headers="pop" class="gt_row gt_right">897649</td>
<td headers="pop_white" class="gt_row gt_right">793465</td>
<td headers="pop_black" class="gt_row gt_right">28404</td>
<td headers="pop_hisp" class="gt_row gt_right">23496</td>
<td headers="pop_aian" class="gt_row gt_right">1555</td>
<td headers="pop_asian" class="gt_row gt_right">8771</td>
<td headers="pop_nhpi" class="gt_row gt_right">274</td>
<td headers="pop_other" class="gt_row gt_right">2516</td>
<td headers="pop_two" class="gt_row gt_right">39168</td>
<td headers="vap" class="gt_row gt_right">717250</td>
<td headers="vap_white" class="gt_row gt_right">643345</td>
<td headers="vap_black" class="gt_row gt_right">22963</td>
<td headers="vap_hisp" class="gt_row gt_right">15617</td>
<td headers="vap_aian" class="gt_row gt_right">1335</td>
<td headers="vap_asian" class="gt_row gt_right">7203</td>
<td headers="vap_nhpi" class="gt_row gt_right">217</td>
<td headers="vap_other" class="gt_row gt_right">1687</td>
<td headers="vap_two" class="gt_row gt_right">24883</td>
<td headers="cd_2010" class="gt_row gt_right">35</td>
<td headers="cd_2020" class="gt_row gt_right">54</td>
<td headers="pre_20_rep_tru" class="gt_row gt_right">271859</td>
<td headers="pre_20_dem_bid" class="gt_row gt_right">123037</td>
<td headers="ndv" class="gt_row gt_right">123037</td>
<td headers="adv_20" class="gt_row gt_right">123037</td>
<td headers="nrv" class="gt_row gt_right">271859</td>
<td headers="arv_20" class="gt_row gt_right">271859</td>
<td headers="sample_1" class="gt_row gt_right">52</td>
<td headers="sample_2" class="gt_row gt_right">53</td>
<td headers="sample_3" class="gt_row gt_right">50</td>
<td headers="sample_4" class="gt_row gt_right">53</td>
<td headers="sample_5" class="gt_row gt_right">51</td>
<td headers="sample_6" class="gt_row gt_right">51</td>
<td headers="sample_7" class="gt_row gt_right">53</td>
<td headers="sample_8" class="gt_row gt_right">53</td>
<td headers="sample_9" class="gt_row gt_right">53</td>
<td headers="sample_10" class="gt_row gt_right">52</td>
<td headers="sample_11" class="gt_row gt_right">51</td>
<td headers="sample_12" class="gt_row gt_right">53</td>
<td headers="state" class="gt_row gt_left">WV</td></tr>
  </tbody>
  &#10;  
</table>
</div>
