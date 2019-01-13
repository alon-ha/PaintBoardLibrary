/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, { Component } from 'react';
import { StyleSheet, requireNativeComponent, findNodeHandle, NativeModules } from 'react-native';
import { View, Text, Button } from 'react-native-ui-lib';
const RNTPaintBoard = requireNativeComponent('RNTPaintBoard')
const paintBoardManager = NativeModules.RNTPaintBoardManager

type Props = {};

export default class App extends Component<Props> {

  clear = () => {
    paintBoardManager.clear()
  }

  load = () => {
    paintBoardManager.load()
  }

  save = () => {
    paintBoardManager.save()
  }

  render() {
    return (
      <View flex useSafeArea>
        <View padding-24>
          <Text
            text30
            dark20
          >
            Draw Something:
      </Text>
        </View>
        <RNTPaintBoard style={{ flex: 1 }} />
        <View style = {styles.btnsContainer}>
          <Button
            onPress={this.clear}
            label="Clear"
            text40
            dark20
            bg-blue50
          />
          <Button
            onPress={this.load}
            label="Load"
            text40
            dark20
            bg-blue50
          />
          <Button
            onPress={this.save}
            label="Save"
            text40
            dark20
            bg-blue50
          />
        </View>
      </View>
    );
  }
}


const styles = StyleSheet.create({
  btnsContainer: {
    paddingTop: 12,
    flexDirection: 'row',
    justifyContent: 'space-evenly',
    alignItems: 'center',
  }
});
