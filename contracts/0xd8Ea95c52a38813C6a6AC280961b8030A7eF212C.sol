contract main {




// =====================  Runtime code  =====================


const NAME = ''


address owner;
address troveManagerAddress;
address activePoolAddress;
uint256 ETH;
uint256 lUSDDebt;

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

function activePoolAddress() {
    return activePoolAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function decreaseLUSDDebt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if troveManagerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6c44656661756c74506f6f6c3a2043616c6c6572206973206e6f74207468652054726f76654d616e616765,
                    mem[207 len 21]
    if arg1 > lUSDDebt:
        revert with 0, 'SafeMath: subtraction overflow'
    lUSDDebt -= arg1
    emit DefaultPoolLUSDDebtUpdated((lUSDDebt - arg1));
}

function increaseLUSDDebt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if troveManagerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6c44656661756c74506f6f6c3a2043616c6c6572206973206e6f74207468652054726f76654d616e616765,
                    mem[207 len 21]
    if arg1 + lUSDDebt < lUSDDebt:
        revert with 0, 'SafeMath: addition overflow'
    lUSDDebt += arg1
    emit DefaultPoolLUSDDebtUpdated((arg1 + lUSDDebt));
}

function setAddresses(address arg1, address arg2) {
    require calldata.size - 4 >= 64
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
    troveManagerAddress = arg1
    activePoolAddress = arg2
    emit TroveManagerAddressChanged(arg1);
    emit ActivePoolAddressChanged(arg2);
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sendETHToActivePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    if troveManagerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6c44656661756c74506f6f6c3a2043616c6c6572206973206e6f74207468652054726f76654d616e616765,
                    mem[207 len 21]
    if arg1 > ETH:
        revert with 0, 'SafeMath: subtraction overflow'
    ETH -= arg1
    emit DefaultPoolETHBalanceUpdated((ETH - arg1));
    emit EtherSent(activePoolAddress, arg1);
    call activePoolAddress with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'DefaultPool: sending ETH failed'
}



}
