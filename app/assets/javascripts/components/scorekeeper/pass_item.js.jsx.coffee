exports = exports ? this
exports.PassItem = React.createClass
  render: () ->
    nodeId = "#{this.props.teamType}-team-pass-#{this.props.pass.number}"
    jqNodeId = "##{nodeId}"

    editPassNumberId = "#{this.props.teamType}-team-edit-pass-number-#{this.props.pass.number}"
    jqEditPassNumberId = "##{editPassNumberId}"

    editPassId = "#{this.props.teamType}-team-edit-pass-#{this.props.pass.number}"
    jqEditPassId = "##{editPassId}"

    `<div aria-multiselectable="true" id={nodeId}>
      <div className="columns">
        <div className="row gutters-xs">
          <div className="col-sm-2 col-xs-2">
            <div aria-controls={jqEditPassNumberId} aria-expanded="false" className="pass text-center" data-parent={jqNodeId} data-toggle="collapse" href={jqEditPassNumberId}>
              {this.props.pass.number}
            </div>
          </div>
          <div className="col-sm-2 col-xs-2">
            <div className="skater">
              {this.props.pass.skaterNumber}
            </div>
          </div>
          <div className="col-sm-2 col-xs-2">
            <div className="notes injury text-center">
              Injury
            </div>
          </div>
          <div className="col-sm-2 col-xs-2">
            <div className="notes call text-center">
              Call
            </div>
          </div>
          <div className="col-sm-2 col-xs-2">
            <div className="notes lost text-center">
              Lost
            </div>
          </div>
          <div className="col-sm-2 col-xs-2">
            <div aria-controls={jqEditPassId} aria-expanded="false" className="points text-center" data-parent={jqNodeId} data-toggle="collapse" href={jqEditPassId}>
              {this.props.pass.points}
            </div>
          </div>
        </div>
      </div>
      <div className="panel">
        <div className="edit-pass-number collapse" id={editPassNumberId}>
          <div className="row gutters-xs">
            <div className="col-sm-1 col-xs-1">
              <div className="remove text-center">
                <span aria-hidden="true" className="glyphicon glyphicon-remove"></span>
              </div>
            </div>
            <div className="col-sm-2 col-xs-2">
              <div className="minus text-center">
                <span aria-hidden="true" className="glyphicon glyphicon-minus"></span>
              </div>
            </div>
            <div className="col-sm-2 col-xs-2">
              <div className="plus text-center">
                <span aria-hidden="true" className="glyphicon glyphicon-plus"></span>
              </div>
            </div>
            <div className="col-sm-1 col-xs-1">
              <div className="ok text-center">
                <span aria-hidden="true" className="glyphicon glyphicon-ok"></span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <PassEditPanel pass={this.props.pass} teamType={this.props.teamType} editPassId={editPassId}/>
    </div>`