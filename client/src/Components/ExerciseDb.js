import { useEffect, useState } from "react";

function ExerciseDb() {

    const [exercises, setExercises] = useState([]);
    const [targets, setTargets] = useState([]);

    useEffect(() => {
        fetch('/exercises')
        .then(r => r.json())
        .then(exerciseArray => setExercises(exerciseArray))
    },[])

    useEffect(() => {
        fetch('/targets')
        .then(r => r.json())
        .then(targetsArray => setTargets(targetsArray))
    },[])

    return (
        <>{exercises.map(e => (
            <></>
        ))}</>
    )
}

export default ExerciseDb;