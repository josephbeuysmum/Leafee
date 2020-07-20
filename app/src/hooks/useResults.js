import { useState, useEffect } from "react";

export default () => {
    const [results, setResults] = useState([]);
    const [errorMessage, setErrorMessage] = useState('');

    const searchApi = async () => {
        return fetch('https://reactnative.dev/movies.json')
        .then((response) => response.json())
        .then((json) => {
            setErrorMessage('');
            setResults(json.movies);
        })
        .catch((error) => {
            setErrorMessage('Something went wrong');
        });
    };

    useEffect(() => {
        searchApi()
    }, []);

    return [searchApi, results, errorMessage];
};