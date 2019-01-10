/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, { Component } from 'react';
import { StyleSheet } from 'react-native';
import { View, Text, Button } from 'react-native-ui-lib';

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
      <View flex>
        <Text
          text30
          dark20>
          Draw Something:
      </Text>
        <View flex>
          <Button
            onPress={this.clear}
            label="Clear"
            text30
            dark20
            bg-red70
          />
          <Button
            onPress={this.load}
            label="Load"
            text30
            dark20
            bg-red70
          />
          <Button
            onPress={this.save}
            label="Save"
            text30
            dark20
            bg-red70
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
});
