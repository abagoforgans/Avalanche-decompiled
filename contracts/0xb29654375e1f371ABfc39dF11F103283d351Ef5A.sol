contract main {




// =====================  Runtime code  =====================


const getFeeManagerMode = 0xd7de965f00000000000000000000000000000000000000000000000000000000


uint256 homeFee;
address erc20tokenAddress;
address owner;
address storE2D6;
uint256 foreignFee;

function erc20token() {
    return erc20tokenAddress
}

function owner() {
    return owner
}

function getHomeFee() {
    return homeFee
}

function getForeignFee() {
    return foreignFee
}

function _fallback() payable {
    revert
}

function setHomeFee(uint256 arg1) {
    homeFee = arg1
    emit HomeFeeUpdated(arg1);
}

function getFeeReceiver() {
    if storE2D6:
        return storE2D6
    return owner
}

function setForeignFee(uint256 arg1) {
    foreignFee = arg1
    emit ForeignFeeUpdated(arg1);
}

function getAmountToBurn(uint256 arg1) {
    require homeFee <= arg1
    return (arg1 - homeFee)
}

function calculateFee(uint256 arg1, bool arg2, bytes32 arg3) {
    if arg3 == 0x89d93e5e92f7e37e490c25f0e50f7f4aad7cc94b308a566553280967be38bcf1:
        return homeFee
    return foreignFee
}

function distributeFeeFromSignatures(uint256 arg1) {
    require ext_code.size(erc20tokenAddress)
    if storE2D6:
        call erc20tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args storE2D6, arg1
    else:
        call erc20tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function distributeFeeFromAffirmation(uint256 arg1) {
    require ext_code.size(erc20tokenAddress)
    if storE2D6:
        call erc20tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args storE2D6, arg1
    else:
        call erc20tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
