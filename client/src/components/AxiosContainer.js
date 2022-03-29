import useAxios from 'axios-hooks'

const AxiosContainer = ({ title, loading, error, children})=>{
  if(loading) return <p>Loading.. Please Wait</p>
  if(error) return <p>Error Loading..</p>
  return (
      <div>
          <h1>{title}</h1>
          {children}
      </div>
  )
}

export default AxiosContainer