contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint8 paused;
uint256 stor101;
address owner;
address stor201;
mapping of uint256 mintedOf;
mapping of uint256 lockedOf;
mapping of uint8 stor204;
array of struct bridgeByIndex;
mapping of uint256 sub_746103d2;
array of struct stor59520738474026231794348976952902667040706605150098822476031567562278569499438;
array of struct stor59520738474026231794348976952902667040706605150098822476031567562278569499439;
array of uint256 stor59520738474026231794348976952902667040706605150098822476031567562278569499440;
array of uint256 stor59520738474026231794348976952902667040706605150098822476031567562278569499441;

function paused() payable {
    return bool(paused)
}

function mintedOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return mintedOf[address(arg1)]
}

function sub_746103d2(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not sub_746103d2[address(arg1)][address(arg2)][arg3][arg4]:
        revert with 0, 'CrossChainBridge: bridge not found'
    if sub_746103d2[address(arg1)][address(arg2)][arg3][arg4] >= bridgeByIndex.length:
        revert with 0, 'CrossChainBridge: bridge not found'
    require bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_0 <= 1
    require bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_8 <= 1
    if bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_16 != address(arg1):
        revert with 0, 'CrossChainBridge: tokens mismatched'
    if bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_256 != address(arg2):
        revert with 0, 'CrossChainBridge: tokens mismatched'
    if bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_512 != arg3:
        revert with 0, 'CrossChainBridge: chains mismatched'
    if bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_768 != arg4:
        revert with 0, 'CrossChainBridge: chains mismatched'
    require bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_0 < 2
    require bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_8 < 2
    return bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_0, 
           bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_0,
           bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_0,
           bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_256,
           bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_512,
           bridgeByIndex[stor206[address(arg1)][address(arg2)][arg3][arg4]].field_768,
           sub_746103d2[address(arg1)][address(arg2)][arg3][arg4]
}

function owner() payable {
    return owner
}

function lockedOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lockedOf[address(arg1)]
}

function getBridgeByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'CrossChainBridge: bridge not found'
    if arg1 >= bridgeByIndex.length:
        revert with 0, 'CrossChainBridge: bridge not found'
    require bridgeByIndex[arg1].field_0 <= 1
    require bridgeByIndex[arg1].field_8 <= 1
    require bridgeByIndex[arg1].field_0 < 2
    require bridgeByIndex[arg1].field_8 < 2
    return bridgeByIndex[arg1].field_0, 
           bridgeByIndex[arg1].field_0,
           bridgeByIndex[arg1].field_0,
           bridgeByIndex[arg1].field_256,
           bridgeByIndex[arg1].field_512,
           bridgeByIndex[arg1].field_768
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5b9885f2(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sha3(address(arg1), address(arg2), arg3, arg4)
}

function changeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor201 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2422bd2b(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 128 >= 96 and ceil32(arg5.length) + 128 <= test266151307()
    require calldata.size >= arg5.length + arg5 + 36
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    mem[ceil32(arg5.length) + 160] = address(this.address)
    mem[ceil32(arg5.length) + 180] = address(arg1)
    mem[ceil32(arg5.length) + 128] = 228
    if arg5.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0x7745434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg5.length) + 490 len 30]
    revert with 0, 
                32,
                34,
                0x6445434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                mem[ceil32(arg5.length) + 490 len 30]
}

function sub_6e221edc(?) payable {
    require calldata.size - 4 >= 128
    require arg1 < 2
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if address(arg2) == address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CrossChainBridge: from/to tokens can't be the same'
    if chainid == arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CrossChainBridge: from/to chains can't be the same'
    if sub_746103d2[address(arg2)][address(arg3)][address(chainid)][address(arg4)]:
        revert with 0, 'CrossChainBridge: this token is already registered'
    require arg1 <= 1
    sub_746103d2[address(arg2)][address(arg3)][address(chainid)][address(arg4)] = bridgeByIndex.length
    bridgeByIndex.length++
    stor8397[stor205.length].field_0 = 1
    require arg1 <= 1
    stor8397[stor205.length].field_8 = Mask(248, 0, arg1)
    stor8397[stor205.length].field_16 = address(arg2)
    stor8397[stor205.length].field_0 = address(arg3)
    stor8397[stor205.length] = chainid
    stor8397[stor205.length] = arg4
    emit BridgeRegistered(bridgeByIndex.length);
    emit BridgeEnabled(bridgeByIndex.length);
}

function getAllBridges() payable {
    mem[64] = (32 * bridgeByIndex.length) + 128
    mem[96] = bridgeByIndex.length
    s = 128
    idx = 0
    while idx < bridgeByIndex.length:
        mem[0] = 205
        _15 = mem[64]
        mem[64] = mem[64] + 192
        require bridgeByIndex[idx].field_0 <= 1
        mem[_15] = bridgeByIndex[idx].field_0
        require bridgeByIndex[idx].field_8 <= 1
        mem[_15 + 32] = bridgeByIndex[idx].field_8
        mem[_15 + 64] = bridgeByIndex[idx].field_16
        mem[_15 + 96] = bridgeByIndex[idx].field_256
        mem[_15 + 128] = bridgeByIndex[idx].field_512
        mem[_15 + 160] = bridgeByIndex[idx].field_768
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _17:
        _26 = mem[t]
        require mem[mem[t]] < 2
        mem[s] = mem[mem[t]]
        require mem[_26 + 32] < 2
        mem[s + 32] = mem[_26 + 32]
        mem[s + 64] = mem[_26 + 76 len 20]
        mem[s + 96] = mem[_26 + 108 len 20]
        mem[s + 128] = mem[_26 + 128]
        mem[s + 160] = mem[_26 + 160]
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _16 + (192 * _17) + -mem[64] + 64
}

function sub_7473cb8e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 2
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not sub_746103d2[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CrossChainBridge: bridge not found'
    if sub_746103d2[arg1] >= bridgeByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CrossChainBridge: bridge not found'
    require bridgeByIndex[stor206[arg1]].field_0 <= 1
    require bridgeByIndex[stor206[arg1]].field_8 <= 1
    require arg2 <= 1
    require bridgeByIndex[stor206[arg1]].field_0 <= 1
    if bridgeByIndex[stor206[arg1]].field_0 == arg2:
        revert with 0, 'CrossChainBridge: status is the same'
    require arg2 <= 1
    if arg2 == 1:
        emit BridgeEnabled(sub_746103d2[arg1]);
    else:
        require arg2 <= 1
        if not arg2:
            emit BridgeDisabled(sub_746103d2[arg1]);
    require arg2 <= 1
    require sub_746103d2[arg1] < bridgeByIndex.length
    require arg2 <= 1
    bridgeByIndex[stor206[arg1]].field_0 = arg2 or Mask(248, 8, bridgeByIndex[stor206[arg1]].field_0)
    require bridgeByIndex[stor206[arg1]].field_8 <= 1
    bridgeByIndex[stor206[arg1]].field_8 = bridgeByIndex[stor206[arg1]].field_8
    bridgeByIndex[stor206[arg1]].field_16 = bridgeByIndex[stor206[arg1]].field_16
    bridgeByIndex[stor206[arg1]].field_256 = bridgeByIndex[stor206[arg1]].field_256
}

function sub_b7218c81(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require ceil32(arg6.length) + 128 >= 96 and ceil32(arg6.length) + 128 <= test266151307()
    require calldata.size >= arg6.length + arg6 + 36
    mem[128 len arg6.length] = arg6[all]
    mem[arg6.length + 128] = 0
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    mem[ceil32(arg6.length) + 128] = 0
    mem[ceil32(arg6.length) + 160] = 0
    if not sub_746103d2[address(arg2)][address(arg1)][address(chainid)][arg3]:
        revert with 0, 'CrossChainBridge: bridge not found'
    if sub_746103d2[address(arg2)][address(arg1)][address(chainid)][arg3] >= bridgeByIndex.length:
        revert with 0, 'CrossChainBridge: bridge not found'
    require bridgeByIndex[stor206[address(arg2)][address(arg1)][address(chainid)][arg3]].field_0 <= 1
    require bridgeByIndex[stor206[address(arg2)][address(arg1)][address(chainid)][arg3]].field_8 <= 1
    if bridgeByIndex[stor206[address(arg2)][address(arg1)][address(chainid)][arg3]].field_16 != address(arg2):
        revert with 0, 'CrossChainBridge: tokens mismatched'
    if bridgeByIndex[stor206[address(arg2)][address(arg1)][address(chainid)][arg3]].field_256 != address(arg1):
        revert with 0, 'CrossChainBridge: tokens mismatched'
    if bridgeByIndex[stor206[address(arg2)][address(arg1)][address(chainid)][arg3]].field_512 != chainid:
        revert with 0, 'CrossChainBridge: chains mismatched'
    if bridgeByIndex[stor206[address(arg2)][address(arg1)][address(chainid)][arg3]].field_768 != arg3:
        revert with 0, 'CrossChainBridge: chains mismatched'
    require bridgeByIndex[stor206[address(arg2)][address(arg1)][address(chainid)][arg3]].field_0 <= 1
    if bridgeByIndex[stor206[address(arg2)][address(arg1)][address(chainid)][arg3]].field_0 != 1:
        revert with 0, 'CrossChainBridge: bridge is not enabled'
    if stor204[arg5]:
        revert with 0, 'CrossChainBridge: proof is already used'
    stor204[arg5] = 1
    if arg6.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0x7745434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg6.length) + 986 len 30]
    revert with 0, 
                32,
                34,
                0x6445434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                mem[ceil32(arg6.length) + 986 len 30]
}

function sub_5f2fede7(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if not sub_746103d2[address(arg1)][address(arg2)][address(chainid)][arg3]:
        revert with 0, 'CrossChainBridge: bridge not found'
    if sub_746103d2[address(arg1)][address(arg2)][address(chainid)][arg3] >= bridgeByIndex.length:
        revert with 0, 'CrossChainBridge: bridge not found'
    require bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0 <= 1
    require bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_8 <= 1
    if bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_16 != address(arg1):
        revert with 0, 'CrossChainBridge: tokens mismatched'
    if bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_256 != address(arg2):
        revert with 0, 'CrossChainBridge: tokens mismatched'
    if bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_512 != chainid:
        revert with 0, 'CrossChainBridge: chains mismatched'
    if bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_768 != arg3:
        revert with 0, 'CrossChainBridge: chains mismatched'
    require bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0 <= 1
    if bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0 != 1:
        revert with 0, 'CrossChainBridge: bridge is not enabled'
    require bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_8 <= 1
    if not bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_8:
        require ext_code.size(bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_16)
        staticcall bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_16.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg5 > ext_call.return_data[0]:
            revert with 0, 'CrossChainBridge: insufficient balance'
        require ext_code.size(bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_16)
        call bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_16.burn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg5 < 0:
            if mintedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0] - arg5 <= mintedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0]:
                revert with 0, 
                            32,
                            36,
                            0x725369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 696 len 28]
        else:
            if mintedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0] - arg5 > mintedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0]:
                if arg5 >= 0:
                    revert with 0, 
                                32,
                                36,
                                0x725369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 696 len 28]
                if mintedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0] - arg5 <= mintedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0]:
                    revert with 0, 
                                32,
                                36,
                                0x725369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 696 len 28]
        mintedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0] -= arg5
    else:
        require bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_8 <= 1
        if bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_8 != 1:
            revert with 0, 'CrossChainBridge: incorrect bridge type'
        require ext_code.size(bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_16)
        staticcall bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_16.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg5 > ext_call.return_data[0]:
            revert with 0, 'CrossChainBridge: insufficient balance'
        require ext_code.size(bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_16)
        staticcall bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_16.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg5 > ext_call.return_data[0]:
            revert with 0, 'CrossChainBridge: insufficient allowance'
        require ext_code.size(bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_16)
        call bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_16.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CrossChainBridge: can't transfer tokens'
        if arg5 < 0:
            if arg5 + lockedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0] >= lockedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0]:
                revert with 0, 
                            32,
                            33,
                            0x735369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                            mem[(4 * ceil32(return_data.size)) + 693 len 31]
        else:
            if arg5 + lockedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0] < lockedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0]:
                if arg5 >= 0:
                    revert with 0, 
                                32,
                                33,
                                0x735369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                mem[(4 * ceil32(return_data.size)) + 693 len 31]
                if arg5 + lockedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0] >= lockedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0]:
                    revert with 0, 
                                32,
                                33,
                                0x735369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                mem[(4 * ceil32(return_data.size)) + 693 len 31]
        lockedOf[stor205[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_0] += arg5
    emit 0x7f66fa41: sub_746103d2[address(arg1)][address(arg2)][address(chainid)][arg3], address(arg1), address(arg2), bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_512, bridgeByIndex[stor206[address(arg1)][address(arg2)][address(chainid)][arg3]].field_768, msg.sender, address(arg4), arg5
    stor101 = 1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        paused = 0
        stor101 = 1
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            paused = 0
            stor101 = 1
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                paused = 0
                stor101 = 1
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    paused = 0
                    stor101 = 1
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
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
                                        0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        paused = 0
                        stor101 = 1
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        paused = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor101 = 1
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor101 = 1
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if ext_code.size(this.address):
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                    mem[210 len 18]
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
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
                                                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                            mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
    stor201 = arg1
    bridgeByIndex.length++
    stor8397[stor205.length].field_0 = 0
    stor8397[stor205.length].field_256 = 0
    stor8397[stor205.length].field_8 = 1
    stor8397[stor205.length].field_16 = 0
    stor8397[stor205.length].field_256 = 0
    stor8397[stor205.length].field_0 = 0
    stor8397[stor205.length].field_256 = 0
    stor8397[stor205.length] = 0
    stor8397[stor205.length] = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
