import React from "react"
import PropTypes from "prop-types"
import Chart from "react-apexcharts";

class Line extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      options: {
        legend: {
          position: 'bottom',
        },
        dataLabels: {
          enabled: false,
        },
        markers: {
          size: 5,
          // shape: 'circle',
        },
        grid: {
          row: {
            colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
            opacity: 0.5
          },
        },
        xaxis: {
          type: 'datetime',
          tickAmount: 10,
          labels: {
            rotate: 0,
            trim: false,
          },
        },
        // yaxis: {
          // labels: {
            // formatter: (value) => { return '£' + value.toFixed(2) }
          // }
        // },
        tooltip: {
          x: {
            format: 'dd MMM yyyy'
          },
        },
        fill: {
          type: 'gradient',
          gradient: {
            shadeIntensity: 1,
            opacityFrom: 0.7,
            opacityTo: 0.9,
            stops: [0, 100]
          }
        }
      },
      series: this.props.series,
    }
  }

  render () {
    return (
      <React.Fragment>
        <Chart options={this.state.options} series={this.state.series} type="line" height="350" />
      </React.Fragment>
    );
  }
}

export default Line
