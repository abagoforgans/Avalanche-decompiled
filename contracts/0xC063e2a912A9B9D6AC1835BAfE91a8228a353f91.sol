contract main {




// =====================  Runtime code  =====================


const NAME = ''


address owner;
address borrowerOperationsAddress;
address troveManagerAddress;
address activePoolAddress;
uint256 ETH;
mapping of uint256 collateral;

function getETH() {
    return ETH
}

function troveManagerAddress() {
    return troveManagerAddress
}

function owner() {
    return owner
}

function getCollateral(address arg1) {
    require calldata.size - 4 >= 32
    return collateral[address(arg1)]
}

function activePoolAddress() {
    return activePoolAddress
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

function accountSurplus(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if troveManagerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73436f6c6c537572706c7573506f6f6c3a2043616c6c6572206973206e6f742054726f76654d616e616765,
                    mem[207 len 21]
    if arg2 + collateral[address(arg1)] < collateral[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    collateral[address(arg1)] += arg2
    emit CollBalanceUpdated((arg2 + collateral[address(arg1)]), arg1);
}

function setAddresses(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
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
    borrowerOperationsAddress = arg1
    troveManagerAddress = arg2
    activePoolAddress = arg3
    emit BorrowerOperationsAddressChanged(arg1);
    emit TroveManagerAddressChanged(arg2);
    emit ActivePoolAddressChanged(arg3);
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function claimColl(address arg1) {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x64436f6c6c537572706c7573506f6f6c3a2043616c6c6572206973206e6f7420426f72726f776572204f7065726174696f6e,
                    mem[214 len 14]
    if not collateral[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0xfe436f6c6c537572706c7573506f6f6c3a204e6f20636f6c6c61746572616c20617661696c61626c6520746f20636c6169,
                    mem[213 len 15]
    collateral[address(arg1)] = 0
    emit CollBalanceUpdated(0, arg1);
    if collateral[address(arg1)] > ETH:
        revert with 0, 'SafeMath: subtraction overflow'
    ETH -= collateral[address(arg1)]
    emit EtherSent(address(arg1), collateral[address(arg1)]);
    call arg1 with:
       value collateral[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x6c436f6c6c537572706c7573506f6f6c3a2073656e64696e6720455448206661696c65, mem[263 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x6c436f6c6c537572706c7573506f6f6c3a2073656e64696e6720455448206661696c65,
                        mem[ceil32(return_data.size) + 264 len 29]
    ('bool', 'ext_call.success')
}



}
