keyMirror = require 'keymirror'
module.exports =
  HALFTIME_DURATION_IN_MS: 30*60*1000
  PREGAME_DURATION_IN_MS: 60*60*1000
  CLOCK_SYNC_SAMPLE_DURATION_IN_MS: 10*1000
  CLOCK_SYNC_SAMPLE_DURATION_MULTIPLIER: 1.15
  CLOCK_SYNC_DELAY_DURATION_IN_MS: 1*1000
  WEBSOCKETS_RETRY_TIME_IN_MS: 3000
  PERIOD_DURATION_IN_MS: 30*60*1000
  JAM_DURATION_IN_MS: 2*60*1000
  JAM_WARNING_IN_MS: 10*1000
  LINEUP_DURATION_IN_MS: 30*1000
  OVERTIME_DURATION_IN_MS: 60*1000
  TIMEOUT_DURATION_IN_MS: 60*1000
  PENALTY_DURATION_IN_MS: 30*1000
  PENALTY_WARNING_IN_MS: 10*1000
  CLOCK_REFRESH_RATE_IN_MS: 500
  AD_DISPLAY_TIME_IN_MS: 10*1000
  GAMES_STATES: ["pregame", "halftime", "jam", "lineup", "timeout", "unofficial_final", "final"]
  TIMEOUT_STATES: ["official_timeout", "home_team_timeout", "home_team_official_review", "away_team_timeout", "away_team_official_review"]
  HOUR_IN_MS: 3600000
  MINUTE_IN_MS: 60000
  SECOND_IN_MS: 1000
  ActionTypes: keyMirror
    START_CLOCK: null
    STOP_CLOCK: null
    START_JAM: null
    STOP_JAM: null
    START_LINEUP: null
    START_PREGAME: null
    START_HALFTIME: null
    START_UNOFFICIAL_FINAL: null
    START_OFFICIAL_FINAL: null
    START_OVERTIME: null
    START_TIMEOUT: null
    HANDLE_CLOCK_EXPIRATION: null
    SET_TIMEOUT_AS_OFFICIAL_TIMEOUT: null
    SET_TIMEOUT_AS_HOME_TEAM_TIMEOUT: null
    SET_TIMEOUT_AS_HOME_TEAM_OFFICIAL_REVIEW: null
    SET_TIMEOUT_AS_AWAY_TEAM_TIMEOUT: null
    SET_TIMEOUT_AS_AWAY_TEAM_OFFICIAL_REVIEW: null
    SET_JAM_ENDED_BY_TIME: null
    SET_JAM_ENDED_BY_CALLOFF: null
    SET_JAM_CLOCK: null
    SET_PERIOD_CLOCK: null
    SET_HOME_TEAM_TIMEOUTS: null
    SET_AWAY_TEAM_TIMEOUTS: null
    SET_PERIOD: null
    SET_JAM_NUMBER: null
    REMOVE_HOME_TEAM_OFFICIAL_REVIEW: null
    REMOVE_AWAY_TEAM_OFFICIAL_REVIEW: null
    RESTORE_HOME_TEAM_OFFICIAL_REVIEW: null
    RESTORE_AWAY_TEAM_OFFICIAL_REVIEW: null
    TOGGLE_NO_PIVOT: null
    TOGGLE_STAR_PASS: null
    SET_SKATER_POSITION: null
    CYCLE_LINEUP_STATUS: null
    CREATE_NEXT_JAM: null
    CREATE_NEXT_PASS: null
    TOGGLE_INJURY: null
    TOGGLE_NOPASS: null
    TOGGLE_CALLOFF: null
    TOGGLE_LOST_LEAD: null
    TOGGLE_LEAD: null
    SET_STAR_PASS: null
    SET_POINTS: null
    REORDER_PASS: null
    SET_PASS_JAMMER: null
    SET_PENALTY: null
    CLEAR_PENALTY: null
    UPDATE_PENALTY: null
    TOGGLE_LEFT_EARLY: null
    TOGGLE_PENALTY_SERVED: null
    SET_PENALTY_BOX_SKATER: null
    TOGGLE_PENALTY_TIMER: null
    TOGGLE_ALL_PENALTY_TIMERS: null
    SAVE_GAME: null
    SYNC_GAMES: null
    REMOVE_PASS: null
    REMOVE_JAM: null
    JAM_TIMER_UNDO: null
    JAM_TIMER_REDO: null
