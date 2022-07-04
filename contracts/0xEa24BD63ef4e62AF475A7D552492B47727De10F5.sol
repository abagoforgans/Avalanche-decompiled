contract main {




// =====================  Runtime code  =====================


#
#  - sub_48ecaf1c(?)
#  - sub_d16c7c75(?)
#
address sub_dbb602fdAddress;
address owner;
address beneficiaryAddress;
address allowanceTargetAddress;
address sub_cd0008fcAddress;
address approverAddress;
uint256 feeBeneficiary;
array of uint256 sub_73125e98;
mapping of address stor11;

function approver() {
    return approverAddress
}

function beneficiary() {
    return beneficiaryAddress
}

function feeBeneficiary() {
    return feeBeneficiary
}

function sub_73125e98(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 4
    return sub_73125e98[arg1]
}

function owner() {
    return owner
}

function allowanceTarget() {
    return allowanceTargetAddress
}

function sub_cd0008fc(?) {
    return sub_cd0008fcAddress
}

function sub_dbb602fd(?) {
    return sub_dbb602fdAddress
}

function _fallback() payable {
    revert
}

function sub_b2830314(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (sub_dbb602fdAddress == address(arg1))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_cf3ac711(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeBeneficiary = arg1
}

function setApprover(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid beneficiary'
    approverAddress = arg1
    emit 0xcca1be4d: approverAddress
}

function setBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid beneficiary'
    beneficiaryAddress = arg1
    emit BeneficiaryChanged(beneficiaryAddress);
}

function sub_9bff3d6c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid HyperDex address'
    sub_cd0008fcAddress = address(arg1)
    emit 0xff021652: sub_cd0008fcAddress
}

function sub_08a957a9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid new gas station address'
    sub_dbb602fdAddress = address(arg1)
    emit 0x647c1c0a: sub_dbb602fdAddress
}

function setAllowanceTarget(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid allowance target'
    allowanceTargetAddress = arg1
    emit AllowanceTargetChanged(allowanceTargetAddress);
}

function setImplementationOverride(bytes4 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == Mask(32, 224, arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[Mask(32, 224, arg1)] = arg2
    emit ImplementationOverrideSet(Mask(32, 224, arg1), arg2);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getFunctionImplementation(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if stor11[Mask(32, 224, arg1)]:
        return stor11[Mask(32, 224, arg1)]
    call sub_cd0008fcAddress.0x972fdd26 with:
         gas gas_remaining wei
        args Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_0d24e564(?) {
    require calldata.size - 4 >= 128
    require 35 < calldata.size
    require 132 <= calldata.size
    idx = 4
    s = 96
    while idx < 132:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    s = 7
    idx = 96
    while 224 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 11
    while 11 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}



}
