contract main {




// =====================  Runtime code  =====================


const getEthBalance = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
uint256 contractVersion;
mapping of uint8 stor152;
address factoryAddress;
address sub_f1a84695Address;
address adminToolsAddress;

function owner() {
    return owner
}

function contractVersion() {
    return contractVersion
}

function factory() {
    return factoryAddress
}

function adminToolsAddress() {
    return adminToolsAddress
}

function sub_eeda452b(?) {
    require calldata.size - 4 >= 32
    return bool(stor152[arg1])
}

function sub_f1a84695(?) {
    return sub_f1a84695Address
}

function isTokenAllowed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor152[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_193fd6b0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminToolsAddress = arg1
}

function getTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x794f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateVersion(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '2JCompound: not an Admin'
    if arg1 <= contractVersion:
        revert with 0, '!NewVersion'
    contractVersion = arg1
}

function allowToken(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '2JCompound: not an Admin'
    if stor152[address(arg1)]:
        revert with 0, 'Token already allowed'
    stor152[address(arg1)] = 1
    emit TokenAdded(address(arg1), block.number);
}

function disallowToken(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '2JCompound: not an Admin'
    if not stor152[address(arg1)]:
        revert with 0, 'Token not allowed'
    stor152[address(arg1)] = 0
    emit TokenRemoved(address(arg1), block.number);
}

function ethWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '2JCompound: not an Admin'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if arg1 > eth.balance(this.address):
        revert with 0, 'Not enough contract balance'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TH ETH_TRANSFER_FAILED'
    if not return_data.size:
        emit EthWithdrawn(uint256 arg1, uint256 arg2):
                          arg1,
                          0,
                          block.number,
    else:
        emit EthWithdrawn(arg1, block.number);
    stor101 = 1
}

function setUniswapAddresses(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '2JCompound: not an Admin'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4a46433a205a65726f206164647265737320666f7220554e4920666163746f72,
                    mem[197 len 31]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x644a46433a205a65726f206164647265737320666f7220554e4920726f7574657230,
                    mem[198 len 30]
    factoryAddress = arg1
    sub_f1a84695Address = arg2
}

function swapEthForToken(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '2JCompound: not an Admin'
    require ext_code.size(sub_f1a84695Address)
    staticcall sub_f1a84695Address.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = arg1
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[260] = this.address
    mem[292] = block.timestamp
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(sub_f1a84695Address)
    call sub_f1a84695Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg2 wei
         gas gas_remaining wei
        args arg3, Array(len=2, data=mem[356 len 64]), this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function swapTokenForToken(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '2JCompound: not an Admin'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f1a84695Address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'approve failed.'
    mem[160] = arg2
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = arg4
    mem[292] = this.address
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(sub_f1a84695Address)
    call sub_f1a84695Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, arg4, Array(len=2, data=mem[388 len 64]), this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function sub_610fb115(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '2JCompound: not an Admin'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if not stor152[address(arg1)]:
        revert with 0, 'Token not allowed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x53416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0x87941ed8: address(arg1), arg3, block.number
    stor101 = 1
}

function withdrawTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '2JCompound: not an Admin'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if not stor152[address(arg1)]:
        revert with 0, 'Token not allowed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x53416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0x87941ed8: address(arg1), arg2, block.number
    stor101 = 1
}

function sub_2ac6ddbd(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.0x24d7806c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '2JCompound: not an Admin'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f1a84695Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'approve failed.'
    require ext_code.size(sub_f1a84695Address)
    staticcall sub_f1a84695Address.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[12 len 20]
    mem[192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = arg3
    mem[292] = this.address
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(sub_f1a84695Address)
    call sub_f1a84695Address.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=2, data=mem[388 len 64]), this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
}

function pairInfo(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).token0() with:
                gas gas_remaining wei
    else:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)))
        staticcall address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)).token0() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg1:
        return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0]
    return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[0]
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        adminToolsAddress = arg1
        contractVersion = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            adminToolsAddress = arg1
            contractVersion = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                adminToolsAddress = arg1
                contractVersion = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    adminToolsAddress = arg1
                    contractVersion = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        adminToolsAddress = arg1
                        contractVersion = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        adminToolsAddress = arg1
                        contractVersion = 1
                        uint8(stor0.field_8) = 0
}



}
