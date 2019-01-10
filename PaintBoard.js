import { requireNativeComponent } from 'react-native';

// requireNativeComponent automatically resolves 'RNTPaintBoard' to 'RNTPaintBoardManager'
module.exports = requireNativeComponent('RNTPaintBoard', null);