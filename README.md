# Electronic Voting Machine (EVM)

Welcome to the **Electronic Voting Machine (EVM)** project! This Verilog-based digital voting system securely simulates an election process, ensuring vote authenticity, real-time vote counting, and result declaration.

---

## Features

- **Multiple Candidates Voting:** Secure voting for multiple candidates.
- **Vote Authentication:** Ensures only valid votes are cast.
- **Real-Time Vote Counting:** Dynamically updates vote counts.
- **Admin Control:** Allows starting, ending, and resetting voting sessions.
- **Result Declaration:** Outputs final vote counts after voting concludes.
- **Reset Functionality:** Resets the system for subsequent voting sessions.

---

## Implementation Details

### 1. Control Unit

- Manages initialization, voting, result display, and reset.
- Implements state transitions based on user/admin inputs.

### 2. Authentication Module

- Verifies voter eligibility using predefined logic.
- Prevents unauthorized access by validating input data.

### 3. Vote Casting Module

- Maps input buttons to candidates.
- Prevents multiple votes from a single input.

### 4. Vote Counter Module

- Securely stores vote counts in registers.
- Ensures accurate vote tallying and real-time updates.

### 5. Display Module

- Visualizes the system state (idle, voting, results mode).
- Displays vote counts in binary format using LEDs.

### 6. Admin Module

- Controls session transitions (start, end, reset).
- Protects voting process integrity.

---

## State Diagram

1. **T0 (Start):** System is in standby mode.
2. **T1 (Authentication):** Voter authentication process.
3. **T2 (Flag):** Checks and sets necessary voting flags.
4. **T3 (Voting Ready):** Voting process is ready to proceed.
5. **T4 (Mode Selection):** Admin or voter selects operation mode.
6. **T5 (Sufficient Time):** Ensures adequate time for voting.
7. **T6 (Result):** Displays final vote counts.
8. **T7 (Vote Display):** Summarizes votes based on selected mode.
9. **T8 (Failure State):** Handles invalid flag/authentication errors.

---

## Flow Diagram

Refer to the project documentation for the complete flow diagram.

---

## How It Works

1. The admin initializes the system.
2. Voters authenticate before casting votes.
3. Votes are stored securely and updated in real-time.
4. Admin ends the session to display results.
5. The system resets for the next voting session.

---

## Usage Instructions

1. **Compiling & Running:**

   - Use a Verilog simulator like **ModelSim/Xilinx Vivado**.
   - Load the Verilog modules and run test benches.
   - Observe state transitions and vote counting via LED indicators.

2. **Simulating Voting:**

   - Provide input signals to represent voters and admin actions.
   - Monitor the outputs to validate vote registration and results.

3. **Resetting the System:**

   - Trigger the reset functionality to clear votes and start fresh.

---

## Contributors
- [Saugata Roy Arghya](https://github.com/yourusername)
- [Sk. Azraf Sami](https://github.com/Sk-Azraf-Sami)
  
---

## Technologies Used

- **Verilog** for hardware description.
- **FPGA/Simulation Software** for testing.
- **LED Display & Registers** for vote counting.

---

## Future Improvements

- Enhance authentication with unique voter IDs.
- Implement encrypted vote storage.
- Add remote monitoring for election transparency.

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Documentation

For detailed documentation, please refer to [EVM\_Report.pdf](https://github.com/yourusername/your-repo/blob/main/EVM_Report.pdf).

---

## Contact

For any inquiries or contributions, feel free to contact the contributors listed above.

---

