import React, { Component } from 'react';
import {
    Text,
    View
} from 'react-native';

import styles from '../styles/FitbitMacroTracker';

export default class FitbitMacroTracker extends Component {
    render() {
        return (
            <View style={styles.container}>
                <Text style={styles.welcome}>
                    Hello World
                </Text>
                <Text style={styles.instructions}>
                    To get started, edit index.ios.js
                </Text>
                <Text style={styles.instructions}>
                    Press Cmd+R to reload,{'\n'}
                    Cmd+D or shake for dev menu
                </Text>
            </View>
        );
    }
}
