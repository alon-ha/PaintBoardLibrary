/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, { Component } from 'react';
import { StyleSheet, requireNativeComponent } from 'react-native';
import { View, Text, Button } from 'react-native-ui-lib';

const RNTPaintBoard = requireNativeComponent('RNTPaintBoard', null);

type Props = {};
export default class App extends Component<Props> {

  clear = () => {

  }

  load = () => {

  }

  save = () => {

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
        <RNTPaintBoard style={styles.wrapper} />
        <View padding-24 row>
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
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  wrapper: {
    flex: 1, alignItems: "center", justifyContent: "center"
  }
});
