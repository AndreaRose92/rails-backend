
export default function Home({players}) {

    console.log(players)

    const renderPlayers = players.map(player => {return <div key={player.id}><h2>{player.name}</h2></div>})



    return (
        <div>
            {renderPlayers}
        </div>
    )

}