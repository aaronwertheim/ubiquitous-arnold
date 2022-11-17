import React, { useEffect, useState } from "react";
import Login from "./Login";
import Nav from "./Nav";

function App() {

  const [user, setUser] = useState(null);

  useEffect(() => {
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  if (!user) return (
    <div>
      <Login setUser={setUser} />
    </div>)

  return (
    <div>
      <Nav setUser={setUser} />
      Hello World!
    </div>
  );
}

export default App;
