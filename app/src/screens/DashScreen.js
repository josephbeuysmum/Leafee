import React from "react";
import { FlatList, Text, View, StyleSheet } from "react-native";
import useResults from '../hooks/useResults';

function DashScreen({}) {
    const [searchApi, results, errorMessage] = useResults();

    return (
        <View>
            <Text>Dashy Screen 1</Text>
            <FlatList 
                data={results}
                keyExtractor={result => result.id}
                renderItem={({ item }) => {
                    return <Text>{item.title}</Text>
                }}
             />
        </View>        
    )
};

const styles = StyleSheet.create({});

export default DashScreen;
