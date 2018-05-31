//
// Created by caleb on 13/02/2017.
//

#ifndef IRONVM_INTERPRETER_H
#define IRONVM_INTERPRETER_H

// stack

void interpretPushByte();
void interpretPushWord();
void interpretPushDword();
void interpretPopByte();
void interpretPopWord();
void interpretPopDword();
void interpretPrintB();
void interpretPrintW();
void interpretPrintD();

// memory

void interpretLoadByte();
void interpretLoadWord();
void interpretLoadDword();
void interpretLoadStr();
void interpretStoreByte();
void interpretStoreWord();
void interpretStoreDword();
void interpretStoreStr();


// Branch

void interpretBranch();
void interpretBranchEqual();
void interpretBranchNotEqual();
void interpretBranchGreaterThan();
void interpretBranchLessThan();
void interpretBranchGreaterEqualThan();
void interpretBranchLessEqualThan();
void interpretBranchZero();

// Compare

void interpretCompareByte();
void interpretCompareWord();
void interpretCompareDword();
void interpretCompareString();

// CallRet

void interpretCall();
void interpretReturn();

// Syscalls
void setupSyscallInterface();
void interpretSyscall();

// Math

void interpretAddByte();
void interpretAddWord();
void interpretAddDword();
void interpretSubByte();
void interpretSubWord();
void interpretSubDword();
void interpretMulByte();
void interpretMulWord();
void interpretMulDword();
void interpretDivByte();
void interpretDivWord();
void interpretDivDword();
void interpretIncrementByte();
void interpretIncrementWord();
void interpretIncrementDword();
void interpretDecrementByte();
void interpretDecrementWord();
void interpretDecrementDword();



#endif //IRONVM_INTERPRETER_H
