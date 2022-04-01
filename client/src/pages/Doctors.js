import useAxios from 'axios-hooks'
import AxiosContainer from '../components/AxiosContainer'
import StringifyJSON from '../components/StringifyJSON'

const Doctors = ()=>{
  const [{ data:doctors, loading, error}, refetch] = useAxios("/api/doctors")
  
  return (
      <AxiosContainer title={'Doctors'} loading={loading} error={error}>
          <StringifyJSON data={doctors} />
      </AxiosContainer>
  )
}

export default Doctors