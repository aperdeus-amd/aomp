program main
    use omp_lib
    integer :: nteams, nthreads

    !$omp target map(nteams, nthreads)
        nteams = omp_get_num_teams()
        nthreads = omp_get_num_threads()
    !$omp end target

    write(*,*) nteams, nthreads
    if (nthreads .ne. 1) write (*,*) "Failed nthreads for gneric kernell"
end program main
