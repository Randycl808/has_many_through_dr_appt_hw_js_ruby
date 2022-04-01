import useAxios from 'axios-hooks'
import AxiosContainer from '../components/AxiosContainer'
import StringifyJSON from '../components/StringifyJSON'

const Appointments = ()=>{
  const [{ data:appointments, loading, error}, refetch] = useAxios("/api/appointments/")
  
  return (
      <AxiosContainer title={'Appointments'}loading={loading} error={error}>
          <StringifyJSON data={appointments} />
      </AxiosContainer>
  )
}

export default Appointments