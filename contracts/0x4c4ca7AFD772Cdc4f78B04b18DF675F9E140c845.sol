contract main {




// =====================  Runtime code  =====================


const DENOMINATOR = 10000


mapping of uint8 stor8;
address depositOracleAddress;
address priceOracleAddress;
uint256 depositRate;
array of uint256 depositTokenSymbol;
address tokenManagerAddress;
address debtOracleAddress;
uint256 fastCrossMinValue;
address owner;
uint8 halted; offset 160
uint128 stor17; offset 160
address newOwner;
address implementationAddress;

function priceOracleAddress() {
    return priceOracleAddress
}

function depositOracleAddress() {
    return depositOracleAddress
}

function implementation() {
    return implementationAddress
}

function fastCrossMinValue() {
    return fastCrossMinValue
}

function depositRate() {
    return depositRate
}

function owner() {
    return owner
}

function debtOracleAddress() {
    return debtOracleAddress
}

function halted() {
    return bool(halted)
}

function tokenManagerAddress() {
    return tokenManagerAddress
}

function newOwner() {
    return newOwner
}

function depositTokenSymbol() {
    return depositTokenSymbol[0 len depositTokenSymbol.length]
}

function htlcGroupMap(address arg1) {
    return bool(stor8[arg1])
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    owner = 0
}

function changeOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    newOwner = arg1
}

function setHalt(bool arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor17 = Mask(96, 0, arg1)
}

function transferOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'New owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    if not implementationAddress:
        revert with 0, 'implementation contract not set'
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot upgrade to invalid address'
    if implementationAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot upgrade to the same implementation'
    implementationAddress = arg1
    emit Upgraded(arg1);
}



}
