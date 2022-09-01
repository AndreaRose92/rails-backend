import React, { useEffect, useState } from 'react';
import { Route, Switch } from 'react-router-dom';
import './styles/App.css';
import Home from './Home'

function App() {

  const [players, setPlayers] = useState([])

  useEffect(()=>{fetch('/players').then(r=>r.json()).then(data=>setPlayers(data))}, [])

  // console.log(players)

  return (
    <div>
      <Switch>
        <Route exact path='/'>
          <Home players={players} />
        </Route>
      </Switch>
    </div>
  );
}

export default App;
