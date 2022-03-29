

const StringifyJSON = ({json})=>{
  return <div>{JSON.stringify(json, null, 2)}</div>
}


export default StringifyJSON