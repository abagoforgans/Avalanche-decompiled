contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 fee;
uint256 sub_be37757a;
address hubAddress;
mapping of struct sub_6c2aef70;
array of uint256 userRequest;

function isNode(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function getUserRequest(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userRequest[address(arg1)]
    return userRequest[address(arg1)][arg2]
}

function hub() {
    return hubAddress
}

function getUserRequestLength(address arg1) {
    require calldata.size - 4 >= 32
    return userRequest[address(arg1)]
}

function sub_6c2aef70(?) {
    require calldata.size - 4 >= 32
    return sub_6c2aef70[arg1].field_0, sub_6c2aef70[arg1].field_256, sub_6c2aef70[arg1].field_512
}

function owner() {
    return owner
}

function sub_be37757a(?) {
    return sub_be37757a
}

function getFee() {
    return fee
}

function sub_f14187ef(?) {
    require calldata.size - 4 >= 64
    require arg2 < userRequest[arg1]
    return userRequest[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_ad80e451(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    fee = arg1
}

function sub_31962cdc(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    hubAddress = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addNode(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor1[address(arg1)] = 1
    emit NodeAdded(arg1);
}

function removeNode(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor1[address(arg1)] = 0
    emit NodeRemoved(arg1);
}

function claimBNB(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7fe3e1ef(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if sub_6c2aef70[arg1].field_512:
        revert with 0, 'Must have a valid requestId'
    if not stor1[msg.sender]:
        revert with 0, 'Forbidden validator'
    mem[96 len arg2.length] = arg2[all]
    sub_6c2aef70[arg1].field_512 = msg.sender or Mask(96, 160, sub_6c2aef70[arg1].field_512)
    if gas_remaining < sub_be37757a:
        revert with 0, 'min gas'
    call sub_6c2aef70[arg1].field_256 with:
       funct uint32(arg1)
         gas gas_remaining wei
        args Mask(224, 32, sha3(arg2[all])) << 224, mem[260 len 4]
    emit 0xff09b167: sha3(arg2[all]), arg1
}

function sub_12042412(?) {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if sub_6c2aef70[arg1].field_512:
        revert with 0, 'Must have a valid requestId'
    signer = erecover(sha3(arg2[all]), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128 len arg2.length] = arg2[all]
    if not stor1[address(signer)]:
        revert with 0, 'Forbidden validator'
    sub_6c2aef70[arg1].field_512 = address(signer)
    if gas_remaining < sub_be37757a:
        revert with 0, 'min gas'
    call sub_6c2aef70[arg1].field_256 with:
       funct uint32(arg1)
         gas gas_remaining wei
        args Mask(224, 32, sha3(arg2[all])) << 224, mem[292 len 4]
    emit 0xff09b167: sha3(arg2[all]), arg1
}

function sub_bc5fc532(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    require ('cd', 36).length >= 64
    if Mask(32, 224, ('cd', 36)[1]) != 0x1f1f897f00000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Must use whitelisted functions'
    userRequest[msg.sender]++
    userRequest[msg.sender][userRequest[msg.sender]] = sha3(block.timestamp, cd[4])
    call hubAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value < fee:
        revert with 0, 'fee'
    sub_6c2aef70[block.timestamp][cd[4]].field_0 = sha3(block.timestamp, cd[4])
    sub_6c2aef70[block.timestamp][cd[4]].field_256 = address(('cd', 36)[0])
    sub_6c2aef70[block.timestamp][cd[4]].field_512 = 0
    emit VrfOraiOracleRequest(address(('cd', 36)[0]), Mask(32, 224, ('cd', 36)[1]), cd[4], block.timestamp, sha3(block.timestamp, cd[4]));
    return sha3(block.timestamp, cd[4])
}

function claim(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeBEP20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeBEP20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeBEP20: low-level call failed'
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}



}
