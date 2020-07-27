import React from 'react';
import { Provider } from 'react-redux';
import { store, persistor } from './src/redux/store';
import { PersistGate } from 'redux-persist/integration/react';
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
        <Provider store={store}>
            <PersistGate persistor={persistor}>
                <NavigationContainer>   
                    <Tab.Navigator>
                        <Tab.Screen name="DashStack" component={DashStackScreen} />
                    </Tab.Navigator>
                </NavigationContainer>
            </PersistGate>
        </Provider>
    );
};