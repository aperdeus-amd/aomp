include ../Makefile.defs

TESTS_DIR = \
    alloc_cgroup \
    alt_clang \
    alt_veclib \
    ancestorF \
    bugz-50967 \
    clang-274983-2 \
    clang-280954 \
    clang-284324 \
    clang-296953-ornla-38 \
    clang-310865 \
    clang-310866 \
    clang-317896 \
    clang-323972 \
    clang-gdb1 \
    clang_llnl-58 \
    clang_llnl-58-1 \
    clang-nwchem-s1_1 \
    clang_udel_saxpy \
    closed_bug1 \
    complex-debug \
    const_global_ctor-308039 \
    dominik-AD \
    exp-303973 \
    flang-251450 \
    flang-272343-3 \
    flang-272534-2 \
    flang-272534-3 \
    flang-274773 \
    flang-274775-1 \
    flang-273990-1 \
    flang-275194 \
    flang-275194-4 \
    flang-275472 \
    flang-275472-O0 \
    flang-288160 \
    flang-288183 \
    flang-288446 \
    flang-288641 \
    flang-289039 \
    flang-303839 \
    flang-305550 \
    flang-305553 \
    flang-307433 \
    flang-307434 \
    flang-308205 \
    flang-312148 \
    flang-312594 \
    flang-313307 \
    flang-313435 \
    flang-315455 \
    flang-315870 \
    flang-318074 \
    flang-319356 \
    flang-320332 \
    flang-320332-2 \
    flang-321277 \
    flang-321277-2 \
    flang-321412 \
    flang-321847 \
    flang-321838 \
    flang-321838-2 \
    flang-322945 \
    flang-322947 \
    flang-324206 \
    flang-324387 \
    flang-324643 \
    flang-flags-308205 \
    flang_atomic_hint \
    flang_dev_write \
    flang-teams-gdb \
    flang-usm \
    helloworld%n \
    lds-prob4 \
    lds-prob5 \
    leopold-devicePtr \
    loop_order \
    nwchem-s1_1 \
    omp_loop \
    requires_directive \
    requires_usm \
    targ_static \
    targc-273739 \
    targc-generic \
    targc-spmd \
    target_teams_reduction \
    tasks \
    usm1 \
    veccopy-ompt-target

all:
	@for test_dir in $(TESTS_DIR); do \
	  echo; \
	  test_name=`grep "TESTNAME *=" $$test_dir/Makefile | sed "s/.*= *//"`; \
	  echo "TEST_DIR: $$test_dir\tTEST_NAME: $$test_name\tMAKE: $(MAKE) -C $$test_dir"; \
	  $(MAKE) -C $$test_dir; \
	done

run run_obin run_sbin run_llbin clean clean_log llbin sbin obin:
	@for test_dir in $(TESTS_DIR); do \
	  echo $$nnn; \
	  test_name=`grep "TESTNAME *=" $$test_dir/Makefile | sed "s/.*= *//"`; \
	  echo "TEST_DIR: $$test_dir\tTEST_NAME: $$test_name\tMAKE: $(MAKE) -C $$test_dir $@"; \
	  $(MAKE) -C $$test_dir $@; \
	done

check:
	 @for test_dir in $(TESTS_DIR); do \
          echo $$nnn; \
          test_name=`grep "TESTNAME *=" $$test_dir/Makefile | sed "s/.*= *//"`; \
          echo "TEST_DIR: $$test_dir\tTEST_NAME: $$test_name\tMAKE: $(MAKE) -C $$test_dir $@"; \
          $(MAKE) -C $$test_dir $@; \
        done

.ll .ll.s .ll.o .s .s.o .o:
	@for test_dir in $(TESTS_DIR); do \
	  echo $$nnn; \
	  test_name=`grep "TESTNAME *=" $$test_dir/Makefile | sed "s/.*= *//"`; \
	  echo "TEST_DIR: $$test_dir\tTEST_NAME: $$test_name\tMAKE: $(MAKE) -C $$test_dir $$test_name$@"; \
	  $(MAKE) -C $$test_dir $$test_name$@; \
	done

help:
	@echo 
	@echo "LLVM Tool Chain:	$(AOMP)/bin"
	@echo "Offload Targets:	$(TARGET)"
	@echo "Host Target:		$(AOMP_CPUTARGET)"
	@echo "Application Dirs:	$(TESTS_DIR)"
	@echo 
	@echo "This Makefile supports the following flags:"
	@echo 
	@echo "	make llbin      // Link pass only"
	@echo "	make run_llbin  // Execute llbin"
	@echo 
	@echo "	make sbin       // Link pass only"
	@echo "	make run_sbin   // Execute sbin"
	@echo 
	@echo "	make obin       // Link pass only"
	@echo "	make run_obin   // Execute obin"
	@echo 
	@echo "	make .ll        // Compile pass only             : -c -S -emit-llvm"
	@echo "	make .ll.s      // Backend pass only             : -c -S"
	@echo "	make .ll.o      // Assemble pass only            : -c"
	@echo "	make .s         // Compile & Backend passes      : -c -S"
	@echo "	make .s.o       // Assemble pass only            : -c"
	@echo "	make .o         // Compile, Backend, Assemble    : -c"
	@echo 
	@echo "	make            // All passes, build all examples from Application Dirs"
	@echo "	make run        // Execute all binaries from Application Dirs"
	@echo 
	@echo "	make clean"
	@echo "	make clean_log"
	@echo "	make help"
	@echo 
	@echo " Environment variables to control compilation & execution"
	@echo "    VERBOSE=1        See lots of compiler messages and driver actions"
	@echo "    TEMPS=1          Do not delete intermediate files"
	@echo "    OFFLOAD_DEBUG=1  See Runtime diagnostics for each call to libomptarget API"
	@echo "    TARGET=          Override Makefile target"
	@echo
	@echo " Compile Environment:  $(SETENV)"
	@echo
	@echo " Run Environment:      $(RUNENV)"
	@echo
	@echo " Compile Flags:        $(CFLAGS) $(EXTRA_CFLAGS)"
	@echo
	@echo " OMP Compile Flags:    $(OMP_FLAGS) $(EXTRA_OMP_FLAGS)"
	@echo
	@echo " Link Flags:           $(LINK_FLAGS) $(EXTRA_LDFLAGS)"
	@echo
