contract main {




// =====================  Runtime code  =====================


const NAME = ''


address owner;
address borrowerOperationsAddress;
address troveManagerAddress;
address stabilityPoolAddress;
address defaultPoolAddress;
uint256 ETH;
uint256 lUSDDebt;

function stabilityPoolAddress() {
    return stabilityPoolAddress
}

function getETH() {
    return ETH
}

function troveManagerAddress() {
    return troveManagerAddress
}

function getLUSDDebt() {
    return lUSDDebt
}

function owner() {
    return owner
}

function defaultPoolAddress() {
    return defaultPoolAddress
}

function borrowerOperationsAddress() {
    return borrowerOperationsAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function increaseLUSDDebt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        if troveManagerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe416374697665506f6f6c3a2043616c6c6572206973206e65697468657220426f72726f7765724f7065726174696f6e73206e6f722054726f76654d616e616765,
                        mem[229 len 31]
    if arg1 + lUSDDebt < lUSDDebt:
        revert with 0, 'SafeMath: addition overflow'
    lUSDDebt += arg1
    emit ActivePoolLUSDDebtUpdated((arg1 + lUSDDebt));
}

function decreaseLUSDDebt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        if troveManagerAddress != msg.sender:
            if stabilityPoolAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            83,
                            0x72416374697665506f6f6c3a2043616c6c6572206973206e65697468657220426f72726f7765724f7065726174696f6e73206e6f722054726f76654d616e61676572206e6f722053746162696c697479506f6f,
                            mem[247 len 13]
    if arg1 > lUSDDebt:
        revert with 0, 'SafeMath: subtraction overflow'
    lUSDDebt -= arg1
    emit ActivePoolLUSDDebtUpdated((lUSDDebt - arg1));
}

function sendETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if borrowerOperationsAddress != msg.sender:
        if troveManagerAddress != msg.sender:
            if stabilityPoolAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            83,
                            0x72416374697665506f6f6c3a2043616c6c6572206973206e65697468657220426f72726f7765724f7065726174696f6e73206e6f722054726f76654d616e61676572206e6f722053746162696c697479506f6f,
                            mem[247 len 13]
    if arg2 > ETH:
        revert with 0, 'SafeMath: subtraction overflow'
    ETH -= arg2
    emit ActivePoolETHBalanceUpdated((ETH - arg2));
    emit EtherSent(address(arg1), arg2);
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'ActivePool: sending ETH failed'
}

function setAddresses(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg1):
        revert with 0, 'Account code size cannot be zero'
    if not arg2:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg2):
        revert with 0, 'Account code size cannot be zero'
    if not arg3:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg3):
        revert with 0, 'Account code size cannot be zero'
    if not arg4:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg4):
        revert with 0, 'Account code size cannot be zero'
    borrowerOperationsAddress = arg1
    troveManagerAddress = arg2
    stabilityPoolAddress = arg3
    defaultPoolAddress = arg4
    emit BorrowerOperationsAddressChanged(arg1);
    emit TroveManagerAddressChanged(arg2);
    emit StabilityPoolAddressChanged(arg3);
    emit DefaultPoolAddressChanged(arg4);
    emit OwnershipTransferred(owner, 0);
    owner = 0
}



}
