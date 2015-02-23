cx = React.addons.classSet
exports = exports ? this
exports.PenaltiesSummary = React.createClass
  displayName: 'PenaltiesSummary'

  propTypes:
    teamState: React.PropTypes.object.isRequired
    penalties: React.PropTypes.array.isRequired
    teamStyle: React.PropTypes.object.isRequired
    selectionHandler: React.PropTypes.func
    hidden: React.PropTypes.bool

  render: () ->
    containerClass = cx
      'penalties-summary': true
      'hidden': this.props.hidden

    <div className={containerClass} >
      {this.props.teamState.skaterStates.map (skaterState, skaterIndex) ->
        <div key={skaterIndex} className='row gutters-xs top-buffer'>
          <div className='col-xs-3 col-sm-3'>
            <button className='btn btn-block btn-boxed' onClick={this.props.selectionHandler.bind(null, skaterIndex)}>
              <strong>{skaterState.skater.number}</strong>
            </button>
          </div>
          <div className='col-xs-1 col-sm-1'>
            <PenaltyIndicator
              penaltyNumber={1}
              penaltyState={skaterState.penaltyStates[0]}
              teamStyle={this.props.teamStyle}/>
          </div>
          <div className='col-xs-1 col-sm-1'>
            <PenaltyIndicator
              penaltyNumber={2}
              penaltyState={skaterState.penaltyStates[1]}
              teamStyle={this.props.teamStyle} />
          </div>
          <div className='col-xs-1 col-sm-1'>
            <PenaltyIndicator
              penaltyNumber={3}
              penaltyState={skaterState.penaltyStates[2]}
              teamStyle={this.props.teamStyle} />
          </div>
          <div className='col-xs-1 col-sm-1'>
            <PenaltyIndicator
              penaltyNumber={4}
              penaltyState={skaterState.penaltyStates[3]}
              teamStyle={this.props.teamStyle} />
          </div>
          <div className='col-xs-1 col-sm-1'>
            <PenaltyIndicator
              penaltyNumber={5}
              penaltyState={skaterState.penaltyStates[4]}
              teamStyle={this.props.teamStyle} />
          </div>
          <div className='col-xs-1 col-sm-1'>
            <PenaltyIndicator
              penaltyNumber={6}
              penaltyState={skaterState.penaltyStates[5]}
              teamStyle={this.props.teamStyle} />
          </div>
          <div className='col-xs-3 col-sm-3'>
            <PenaltyIndicator
              penaltyNumber={7}
              penaltyState={skaterState.penaltyStates[6]}
              teamStyle={this.props.teamStyle}
              leftEarly={true} />
          </div>
        </div>
      , this}
    </div>