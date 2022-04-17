contract main {




// =====================  Runtime code  =====================


const EXPIRY_TIME = 300


address owner;
address chainlinkTokenAddress;
mapping of uint256 stor2;
mapping of uint8 stor3;
uint256 stor4;

function getChainlinkToken() payable {
    return chainlinkTokenAddress
}

function owner() payable {
    return owner
}

function getAuthorizationStatus(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function withdrawable() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if 1 > stor4:
        revert with 0, 'SafeMath: subtraction overflow'
    return (stor4 - 1)
}

function setFulfillmentPermission(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor3[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function cancelOracleRequest(bytes32 arg1, uint256 arg2, bytes4 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if sha3(arg2, Mask(160, 96, msg.sender) >> 96, arg3, arg4) != stor2[arg1]:
        revert with 0, 'Params do not match request ID'
    if arg4 > block.timestamp:
        revert with 0, 'Request is not expired'
    stor2[arg1] = 0
    emit CancelOracleRequest(arg1);
    require ext_code.size(chainlinkTokenAddress)
    call chainlinkTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function oracleRequest(address arg1, uint256 arg2, bytes32 arg3, address arg4, bytes4 arg5, uint256 arg6, uint256 arg7, bytes arg8) payable {
    require calldata.size - 4 >= 256
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    if chainlinkTokenAddress != msg.sender:
        revert with 0, 'Must use LINK token'
    if chainlinkTokenAddress == arg4:
        revert with 0, 'Cannot callback to LINK'
    if stor2[arg1][arg6]:
        revert with 0, 'Must use a unique ID'
    if block.timestamp + 300 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    stor2[arg1][arg6] = sha3(arg2, arg4, arg5, block.timestamp + 300)
    emit OracleRequest(address(arg1), sha3(arg1, arg6), arg2, address(arg4), Mask(32, 224, arg5), block.timestamp + 300, arg7, Array(len=arg8.length, data=arg8[all]), arg3);
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg2 + 1 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if stor4 < arg2 + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x73416d6f756e74207265717565737465642069732067726561746572207468616e20776974686472617761626c652062616c616e63,
                    mem[217 len 11]
    if arg2 > stor4:
        revert with 0, 'SafeMath: subtraction overflow'
    stor4 -= arg2
    require ext_code.size(chainlinkTokenAddress)
    call chainlinkTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function fulfillOracleRequest(bytes32 arg1, uint256 arg2, address arg3, bytes4 arg4, uint256 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    if not stor3[msg.sender]:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x654e6f7420616e20617574686f72697a6564206e6f646520746f2066756c66696c6c2072657175657374,
                        mem[206 len 22]
    if not stor2[arg1]:
        revert with 0, 'Must have a valid requestId'
    if sha3(arg2, arg3, arg4, arg5) != stor2[arg1]:
        revert with 0, 'Params do not match request ID'
    if arg2 + stor4 < stor4:
        revert with 0, 'SafeMath: addition overflow'
    stor4 += arg2
    stor2[arg1] = 0
    if gas_remaining < 400000:
        revert with 0, 'Must provide consumer enough gas'
    call arg3 with:
       funct uint32(arg1)
         gas gas_remaining wei
        args Mask(224, 32, arg6) << 224, mem[380 len 4]
    return bool(ext_call.success)
}

function onTokenTransfer(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if chainlinkTokenAddress != msg.sender:
        revert with 0, 'Must use LINK token'
    if 68 > arg3.length:
        revert with 0, 'Invalid request length'
    if Mask(32, 224, mem[128]) != 0x4042994600000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Must use whitelisted functions'
    mem[132] = arg1
    mem[164] = arg2
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    delegate this.address with:
       funct (Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    if not delegate.return_code:
        revert with 0, 'Unable to create request'
}



}
