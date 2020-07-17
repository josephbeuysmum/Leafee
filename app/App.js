import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import DashScreen from './src/screens/DashScreen';

const Tab = createBottomTabNavigator();
const DashStack = createStackNavigator();

function DashStackScreen() {
    return (
        <DashStack.Navigator>
            <DashStack.Screen name="Dash" component={DashScreen} />
        </DashStack.Navigator>
    );
}

export default function App() {
    return (
        <NavigationContainer>
            <Tab.Navigator>
                <Tab.Screen name="Dash" component={DashStackScreen} />
            </Tab.Navigator>
        </NavigationContainer>
    );
};