contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor0;
uint32 stor1;
address companyAddress;
address nftAddress;
address signerAddress;
address sub_8ec98031Address;
uint256 sub_b0548ff0;
uint256 sub_ee8449ab;
uint256 sub_b5574f73;
uint256 sub_550264a4;
uint256 sub_a1c7836b;
uint256 seed;
uint256 sub_1e2b9b48;
uint256 sub_9b4768a1;
uint256 sub_87667e0e;
uint8 sub_45a4f8f5;
mapping of struct stor15;
mapping of struct sub_9dc01447;
mapping of uint8 stor17;
mapping of uint256 sub_faf8da60;
mapping of uint256 sub_4cbe540d;
mapping of uint8 stor20;

function sub_1e2b9b48(?) {
    return sub_1e2b9b48
}

function signer() {
    return signerAddress
}

function sub_45a4f8f5(?) {
    return bool(sub_45a4f8f5)
}

function nft() {
    return nftAddress
}

function sub_4cbe540d(?) {
    require calldata.size - 4 >= 32
    return sub_4cbe540d[arg1]
}

function sub_550264a4(?) {
    return sub_550264a4
}

function sub_5c146bfb(?) {
    require calldata.size - 4 >= 32
    return bool(stor20[arg1])
}

function sub_6408d20a(?) {
    require calldata.size - 4 >= 32
    return bool(stor17[arg1])
}

function company() {
    return address(companyAddress)
}

function seed() {
    return seed
}

function sub_87667e0e(?) {
    return sub_87667e0e
}

function owner() {
    return address(owner)
}

function sub_8ec98031(?) {
    return sub_8ec98031Address
}

function sub_9b4768a1(?) {
    return sub_9b4768a1
}

function sub_9dc01447(?) {
    require calldata.size - 4 >= 32
    return sub_9dc01447[arg1].field_0, 
           sub_9dc01447[arg1].field_256,
           sub_9dc01447[arg1].field_512,
           sub_9dc01447[arg1].field_1024,
           sub_9dc01447[arg1].field_1280,
           sub_9dc01447[arg1].field_1536,
           sub_9dc01447[arg1].field_1792
}

function sub_a1c7836b(?) {
    return sub_a1c7836b
}

function sub_b0548ff0(?) {
    return sub_b0548ff0
}

function sub_b5574f73(?) {
    return sub_b5574f73
}

function sub_ee8449ab(?) {
    return sub_ee8449ab
}

function sub_faf8da60(?) {
    require calldata.size - 4 >= 32
    return sub_faf8da60[arg1]
}

function _fallback() payable {
    revert
}

function sub_20edeaf3(?) {
    return sub_550264a4, sub_b5574f73, sub_a1c7836b, sub_ee8449ab
}

function sub_77960d1f(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    sub_b0548ff0 = arg1
    emit 0xab1c7b87: arg1
}

function sub_c50765b3(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    sub_a1c7836b = arg1
    emit 0x91ec60ed: arg1
}

function sub_db4d8ece(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    sub_ee8449ab = arg1
    emit 0x39bdf191: arg1
}

function sub_0444cfbd(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    sub_550264a4 = arg1
    emit 0xe183d680: arg1, arg1
}

function updateNFT(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    nftAddress = arg1
    emit 0xd9c9db1f: arg1
}

function sub_6b79e127(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    sub_8ec98031Address = arg1
    emit 0x8c0aa3de: arg1
}

function sub_4213d0d7(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    address(companyAddress) = arg1
    emit 0x1fb13b24: arg1
}

function updateSigner(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    signerAddress = arg1
    emit UpdateSigner(arg1);
}

function transferOwner(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    address(owner) = arg1
    emit TransferOwner(arg1);
}

function sub_65c48d55(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    sub_45a4f8f5 = uint8(arg1)
    emit 0xed97e2e0: bool(uint8(arg1))
}

function sub_05c787f6(?) {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    stor20[address(arg1)] = uint8(arg2)
    emit 0x2c1876db: address(arg1), arg2
}

function updateSlippage(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor17[msg.sender]:
        revert with 0, 'no access permission'
    sub_9b4768a1 = arg1
    sub_87667e0e = arg2
    emit 0x862152c8: arg1, arg2
}

function updateAccessPermission(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    stor17[address(arg1)] = uint8(arg2)
    emit UpdateAccessPermission(address(arg1), arg2);
}

function sub_10d069d2(?) {
    require calldata.size - 4 >= 32
    if not stor17[msg.sender]:
        revert with 0, 'no access permission'
    if arg1 > sub_b5574f73:
        revert with 0, 'SafeMath:OVERFLOW_SUB'
    sub_b5574f73 -= arg1
    if arg1 > sub_550264a4:
        revert with 0, 'SafeMath:OVERFLOW_SUB'
    sub_550264a4 -= arg1
    emit 0x14f710ce: arg1
}

function addCharacter(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor17[msg.sender]:
        revert with 0, 'no access permission'
    if arg1 + sub_b5574f73 < sub_b5574f73:
        revert with 0, 'SafeMath:INVALID_ADD'
    sub_b5574f73 += arg1
    if arg1 + sub_550264a4 < sub_550264a4:
        revert with 0, 'SafeMath:INVALID_ADD'
    sub_550264a4 += arg1
    emit 0x8c486df3: arg1
}

function sub_36f65255(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_8ec98031Address)
    staticcall sub_8ec98031Address.getWeth() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[292 len 0] = None
    require ext_code.size(sub_8ec98031Address)
    staticcall sub_8ec98031Address.0xc0fa81a with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_619ef322(?) {
    require calldata.size - 4 >= 32
    if stor15[arg1].field_256:
        mem[128] = stor15[arg1][1].field_0
        idx = 128
        s = 0
        while (32 * stor15[arg1].field_256) + 96 > idx:
            mem[idx + 32] = stor15[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor15[arg1].field_256) + 224 len floor32(stor15[arg1].field_256)] = mem[128 len floor32(stor15[arg1].field_256)]
    return stor15[arg1].field_0, 
           Array(len=stor15[arg1].field_256, data=mem[128 len floor32(stor15[arg1].field_256)], mem[(32 * stor15[arg1].field_256) + floor32(stor15[arg1].field_256) + 224 len (32 * stor15[arg1].field_256) - floor32(stor15[arg1].field_256)])
}

function sub_7c4a285e(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    call address(owner) with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0x645472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                        mem[248 len 12]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0x645472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                        mem[ceil32(return_data.size) + 249 len 12]
    ('bool', 'ext_call.success')
}

function emergencyTransferToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'not owner'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        45,
                        0x645472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                        mem[309 len 19]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 
                        32,
                        45,
                        0x645472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                        mem[309 len 19]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        45,
                        0x645472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                        mem[ceil32(return_data.size) + 310 len 19]
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            45,
                            0x645472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[ceil32(return_data.size) + 310 len 19]
}

function sub_49b92d5e(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if sub_45a4f8f5:
        revert with 0, 'purchase paused'
    if arg1 <= 0:
        revert with 0, 'empty open'
    if arg1 > sub_b0548ff0:
        revert with 0, 'invalid number of open'
    if sub_b5574f73 < arg1:
        revert with 0, 'character out of supply'
    if arg1 + sub_faf8da60[msg.sender] < sub_faf8da60[msg.sender]:
        revert with 0, 'SafeMath:INVALID_ADD'
    if arg4 <= 0:
        revert with 0, 'empty input'
    if not stor20[address(arg3)]:
        revert with 0, 'invalid payment method'
    if arg1 + sub_faf8da60[msg.sender] > sub_ee8449ab:
        revert with 0, 'purchase limit reached'
    if arg2 <= sub_4cbe540d[msg.sender]:
        revert with 0, 'expired counter'
    mem[ceil32(arg5.length) + 160] = msg.sender << 96
    mem[ceil32(arg5.length) + 180] = arg2
    mem[ceil32(arg5.length) + 212] = address(arg3)
    mem[ceil32(arg5.length) + 128] = 72
    _24 = sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]])
    mem[ceil32(arg5.length) + 264] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg5.length) + 292] = _24
    mem[ceil32(arg5.length) + 232] = 60
    if arg5.length != 65:
        revert with 0, 'invalid signature length'
    mem[ceil32(arg5.length) + 420] = mem[128]
    mem[ceil32(arg5.length) + 452] = mem[160]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _24), 0, mem[128], mem[160]) 
    mem[ceil32(arg5.length) + 324] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != signerAddress:
        revert with 0, 'invalid signature'
    sub_4cbe540d[msg.sender] = arg2
    if not arg3:
        if arg1 * sub_a1c7836b != msg.value:
            revert with 0, 'invalid payment amount'
        if arg4 != arg1 * sub_a1c7836b:
            revert with 0, 'invalid payment value'
        mem[ceil32(arg5.length) + 356] = 0
        mem[ceil32(arg5.length) + 388 len 0] = None
        mem[ceil32(arg5.length) + 420 len 0] = None
        call address(companyAddress) with:
           value arg4 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            52,
                            0x645472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                            mem[ceil32(arg5.length) + 508 len 12]
            mem[ceil32(arg5.length) + 420] = msg.sender
            mem[ceil32(arg5.length) + 452] = block.number
            mem[ceil32(arg5.length) + 484] = seed
            mem[ceil32(arg5.length) + 516] = 128
            mem[ceil32(arg5.length) + 548] = 3
            mem[ceil32(arg5.length) + 580] = 0x5245510000000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg5.length) + 388] = 192
            require arg1 <= test266151307()
            mem[ceil32(arg5.length) + 612] = arg1
            mem[64] = ceil32(arg5.length) + (32 * arg1) + 644
            if not arg1:
                mem[0] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                mem[32] = 15
                stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0 = msg.sender or Mask(96, 160, stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0)
                idx = 0
                while idx < arg1:
                    _1433 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = block.number
                    mem[mem[64] + 96] = seed
                    mem[mem[64] + 128] = 128
                    mem[mem[64] + 160] = 3
                    mem[mem[64] + 192] = 0x524e470000000000000000000000000000000000000000000000000000000000
                    _1434 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    _1436 = sha3(mem[_1434 + 32 len mem[_1434]])
                    mem[_1433 + 228] = msg.sender
                    require ext_code.size(nftAddress)
                    call nftAddress.mint(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[_1433 + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    seed = _1436
                    mem[32] = 15
                    stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256++
                    mem[0] = sha3(sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000), 15) + 1
                    stor[stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256 + ('array', 1, ('map', ('data', 'msg.sender', 'number', ('stor', ('name', 'stor10', 10)), 128, 3, 37212125072751642401020610878371451300904286891924156678310116369885992845312), ('name', 'stor15', 15)))].field_0 = ext_call.return_data[0]
                    require idx < mem[ceil32(arg5.length) + 612]
                    mem[(32 * idx) + ceil32(arg5.length) + 644] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if arg1 > sub_b5574f73:
                    revert with 0, 'SafeMath:OVERFLOW_SUB'
                sub_b5574f73 -= arg1
                mem[32] = 16
                sub_9dc01447[stor11].field_0 = msg.sender or Mask(96, 160, sub_9dc01447[stor11].field_0)
                sub_9dc01447[stor11].field_512 = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                sub_9dc01447[stor11].field_768 = mem[ceil32(arg5.length) + 612]
                mem[0] = sha3(sub_1e2b9b48, 16) + 3
                if not mem[ceil32(arg5.length) + 612]:
                    idx = 0
                    while sub_9dc01447[stor11].field_768 > idx:
                        sub_9dc01447[stor11][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[32] = 16
                    sub_9dc01447[stor11].field_1024 = arg1
                    sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                    sub_9dc01447[stor11].field_1536 = arg4
                    sub_9dc01447[stor11].field_1792 = block.number
                    mem[0] = sub_1e2b9b48
                    sub_9dc01447[stor11].field_256 = arg3
                    _2140 = mem[64]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = sub_a1c7836b
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 192] = arg3
                    mem[mem[64] + 64] = 224
                    mem[_2140 + 224] = mem[ceil32(arg5.length) + 612]
                    _2142 = mem[ceil32(arg5.length) + 612]
                    mem[_2140 + 256 len floor32(mem[ceil32(arg5.length) + 612])] = mem[ceil32(arg5.length) + 644 len floor32(mem[ceil32(arg5.length) + 612])]
                    emit 0xd51c6476: mem[mem[64] len (32 * _2142) + _2140 + -mem[64] + 256], sub_1e2b9b48
                else:
                    s = 0
                    idx = ceil32(arg5.length) + 644
                    while ceil32(arg5.length) + (32 * mem[ceil32(arg5.length) + 612]) + 644 > idx:
                        sub_9dc01447[stor11][s + 3].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[ceil32(arg5.length) + 612]) + 31) >> 5
                    while sub_9dc01447[stor11].field_768 > idx:
                        sub_9dc01447[stor11][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[32] = 16
                    sub_9dc01447[stor11].field_1024 = arg1
                    sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                    sub_9dc01447[stor11].field_1536 = arg4
                    sub_9dc01447[stor11].field_1792 = block.number
                    mem[0] = sub_1e2b9b48
                    sub_9dc01447[stor11].field_256 = arg3
                    _2694 = mem[64]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = sub_a1c7836b
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 192] = arg3
                    mem[mem[64] + 64] = 224
                    mem[_2694 + 224] = mem[ceil32(arg5.length) + 612]
                    _2696 = mem[ceil32(arg5.length) + 612]
                    mem[_2694 + 256 len floor32(mem[ceil32(arg5.length) + 612])] = mem[ceil32(arg5.length) + 644 len floor32(mem[ceil32(arg5.length) + 612])]
                    emit 0xd51c6476: mem[mem[64] len (32 * _2696) + _2694 + -mem[64] + 256], sub_1e2b9b48
            else:
                mem[ceil32(arg5.length) + 644 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                mem[0] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                mem[32] = 15
                stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0 = msg.sender or Mask(96, 160, stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0)
                idx = 0
                while idx < arg1:
                    _1438 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = block.number
                    mem[mem[64] + 96] = seed
                    mem[mem[64] + 128] = 128
                    mem[mem[64] + 160] = 3
                    mem[mem[64] + 192] = 0x524e470000000000000000000000000000000000000000000000000000000000
                    _1439 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    _1441 = sha3(mem[_1439 + 32 len mem[_1439]])
                    mem[_1438 + 228] = msg.sender
                    require ext_code.size(nftAddress)
                    call nftAddress.mint(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[_1438 + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    seed = _1441
                    mem[32] = 15
                    stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256++
                    mem[0] = sha3(sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000), 15) + 1
                    stor[stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256 + ('array', 1, ('map', ('data', 'msg.sender', 'number', ('stor', ('name', 'stor10', 10)), 128, 3, 37212125072751642401020610878371451300904286891924156678310116369885992845312), ('name', 'stor15', 15)))].field_0 = ext_call.return_data[0]
                    require idx < mem[ceil32(arg5.length) + 612]
                    mem[(32 * idx) + ceil32(arg5.length) + 644] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if arg1 > sub_b5574f73:
                    revert with 0, 'SafeMath:OVERFLOW_SUB'
                sub_b5574f73 -= arg1
                mem[32] = 16
                sub_9dc01447[stor11].field_0 = msg.sender or Mask(96, 160, sub_9dc01447[stor11].field_0)
                sub_9dc01447[stor11].field_512 = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                sub_9dc01447[stor11].field_768 = mem[ceil32(arg5.length) + 612]
                mem[0] = sha3(sub_1e2b9b48, 16) + 3
                if not mem[ceil32(arg5.length) + 612]:
                    idx = 0
                    while sub_9dc01447[stor11].field_768 > idx:
                        sub_9dc01447[stor11][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[32] = 16
                    sub_9dc01447[stor11].field_1024 = arg1
                    sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                    sub_9dc01447[stor11].field_1536 = arg4
                    sub_9dc01447[stor11].field_1792 = block.number
                    mem[0] = sub_1e2b9b48
                    sub_9dc01447[stor11].field_256 = arg3
                    _2148 = mem[64]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = sub_a1c7836b
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 192] = arg3
                    mem[mem[64] + 64] = 224
                    mem[_2148 + 224] = mem[ceil32(arg5.length) + 612]
                    _2150 = mem[ceil32(arg5.length) + 612]
                    mem[_2148 + 256 len floor32(mem[ceil32(arg5.length) + 612])] = mem[ceil32(arg5.length) + 644 len floor32(mem[ceil32(arg5.length) + 612])]
                    emit 0xd51c6476: mem[mem[64] len (32 * _2150) + _2148 + -mem[64] + 256], sub_1e2b9b48
                else:
                    s = 0
                    idx = ceil32(arg5.length) + 644
                    while ceil32(arg5.length) + (32 * mem[ceil32(arg5.length) + 612]) + 644 > idx:
                        sub_9dc01447[stor11][s + 3].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[ceil32(arg5.length) + 612]) + 31) >> 5
                    while sub_9dc01447[stor11].field_768 > idx:
                        sub_9dc01447[stor11][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[32] = 16
                    sub_9dc01447[stor11].field_1024 = arg1
                    sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                    sub_9dc01447[stor11].field_1536 = arg4
                    sub_9dc01447[stor11].field_1792 = block.number
                    mem[0] = sub_1e2b9b48
                    sub_9dc01447[stor11].field_256 = arg3
                    _2704 = mem[64]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = sub_a1c7836b
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 192] = arg3
                    mem[mem[64] + 64] = 224
                    mem[_2704 + 224] = mem[ceil32(arg5.length) + 612]
                    _2706 = mem[ceil32(arg5.length) + 612]
                    mem[_2704 + 256 len floor32(mem[ceil32(arg5.length) + 612])] = mem[ceil32(arg5.length) + 644 len floor32(mem[ceil32(arg5.length) + 612])]
                    emit 0xd51c6476: mem[mem[64] len (32 * _2706) + _2704 + -mem[64] + 256], sub_1e2b9b48
        else:
            mem[ceil32(arg5.length) + 388] = return_data.size
            mem[ceil32(arg5.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            52,
                            0x645472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 509 len 12]
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 421] = msg.sender
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 453] = block.number
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 485] = seed
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 517] = 128
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 549] = 3
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 581] = 0x5245510000000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 389] = 192
            require arg1 <= test266151307()
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 613] = arg1
            mem[64] = ceil32(arg5.length) + ceil32(return_data.size) + (32 * arg1) + 645
            if not arg1:
                mem[0] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                mem[32] = 15
                stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0 = msg.sender or Mask(96, 160, stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0)
                idx = 0
                while idx < arg1:
                    _1443 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = block.number
                    mem[mem[64] + 96] = seed
                    mem[mem[64] + 128] = 128
                    mem[mem[64] + 160] = 3
                    mem[mem[64] + 192] = 0x524e470000000000000000000000000000000000000000000000000000000000
                    _1444 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    _1446 = sha3(mem[_1444 + 32 len mem[_1444]])
                    mem[_1443 + 228] = msg.sender
                    require ext_code.size(nftAddress)
                    call nftAddress.mint(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[_1443 + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    seed = _1446
                    mem[32] = 15
                    stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256++
                    mem[0] = sha3(sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000), 15) + 1
                    stor[stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256 + ('array', 1, ('map', ('data', 'msg.sender', 'number', ('stor', ('name', 'stor10', 10)), 128, 3, 37212125072751642401020610878371451300904286891924156678310116369885992845312), ('name', 'stor15', 15)))].field_0 = ext_call.return_data[0]
                    require idx < mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]
                    mem[(32 * idx) + ceil32(arg5.length) + ceil32(return_data.size) + 645] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if arg1 > sub_b5574f73:
                    revert with 0, 'SafeMath:OVERFLOW_SUB'
                sub_b5574f73 -= arg1
                mem[32] = 16
                sub_9dc01447[stor11].field_0 = msg.sender or Mask(96, 160, sub_9dc01447[stor11].field_0)
                sub_9dc01447[stor11].field_512 = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                sub_9dc01447[stor11].field_768 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]
                mem[0] = sha3(sub_1e2b9b48, 16) + 3
                if not mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]:
                    idx = 0
                    while sub_9dc01447[stor11].field_768 > idx:
                        sub_9dc01447[stor11][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[32] = 16
                    sub_9dc01447[stor11].field_1024 = arg1
                    sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                    sub_9dc01447[stor11].field_1536 = arg4
                    sub_9dc01447[stor11].field_1792 = block.number
                    mem[0] = sub_1e2b9b48
                    sub_9dc01447[stor11].field_256 = arg3
                    _2156 = mem[64]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = sub_a1c7836b
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 192] = arg3
                    mem[mem[64] + 64] = 224
                    mem[_2156 + 224] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]
                    _2158 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]
                    mem[_2156 + 256 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 613])] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 645 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 613])]
                    emit 0xd51c6476: mem[mem[64] len (32 * _2158) + _2156 + -mem[64] + 256], sub_1e2b9b48
                else:
                    s = 0
                    idx = ceil32(arg5.length) + ceil32(return_data.size) + 645
                    while ceil32(arg5.length) + ceil32(return_data.size) + (32 * mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]) + 645 > idx:
                        sub_9dc01447[stor11][s + 3].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]) + 31) >> 5
                    while sub_9dc01447[stor11].field_768 > idx:
                        sub_9dc01447[stor11][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[32] = 16
                    sub_9dc01447[stor11].field_1024 = arg1
                    sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                    sub_9dc01447[stor11].field_1536 = arg4
                    sub_9dc01447[stor11].field_1792 = block.number
                    mem[0] = sub_1e2b9b48
                    sub_9dc01447[stor11].field_256 = arg3
                    _2714 = mem[64]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = sub_a1c7836b
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 192] = arg3
                    mem[mem[64] + 64] = 224
                    mem[_2714 + 224] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]
                    _2716 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]
                    mem[_2714 + 256 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 613])] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 645 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 613])]
                    emit 0xd51c6476: mem[mem[64] len (32 * _2716) + _2714 + -mem[64] + 256], sub_1e2b9b48
            else:
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 645 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                mem[0] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                mem[32] = 15
                stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0 = msg.sender or Mask(96, 160, stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0)
                idx = 0
                while idx < arg1:
                    _1448 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = block.number
                    mem[mem[64] + 96] = seed
                    mem[mem[64] + 128] = 128
                    mem[mem[64] + 160] = 3
                    mem[mem[64] + 192] = 0x524e470000000000000000000000000000000000000000000000000000000000
                    _1449 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    _1451 = sha3(mem[_1449 + 32 len mem[_1449]])
                    mem[_1448 + 228] = msg.sender
                    require ext_code.size(nftAddress)
                    call nftAddress.mint(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[_1448 + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    seed = _1451
                    mem[32] = 15
                    stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256++
                    mem[0] = sha3(sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000), 15) + 1
                    stor[stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256 + ('array', 1, ('map', ('data', 'msg.sender', 'number', ('stor', ('name', 'stor10', 10)), 128, 3, 37212125072751642401020610878371451300904286891924156678310116369885992845312), ('name', 'stor15', 15)))].field_0 = ext_call.return_data[0]
                    require idx < mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]
                    mem[(32 * idx) + ceil32(arg5.length) + ceil32(return_data.size) + 645] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if arg1 > sub_b5574f73:
                    revert with 0, 'SafeMath:OVERFLOW_SUB'
                sub_b5574f73 -= arg1
                mem[32] = 16
                sub_9dc01447[stor11].field_0 = msg.sender or Mask(96, 160, sub_9dc01447[stor11].field_0)
                sub_9dc01447[stor11].field_512 = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                sub_9dc01447[stor11].field_768 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]
                mem[0] = sha3(sub_1e2b9b48, 16) + 3
                if not mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]:
                    idx = 0
                    while sub_9dc01447[stor11].field_768 > idx:
                        sub_9dc01447[stor11][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[32] = 16
                    sub_9dc01447[stor11].field_1024 = arg1
                    sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                    sub_9dc01447[stor11].field_1536 = arg4
                    sub_9dc01447[stor11].field_1792 = block.number
                    mem[0] = sub_1e2b9b48
                    sub_9dc01447[stor11].field_256 = arg3
                    _2164 = mem[64]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = sub_a1c7836b
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 192] = arg3
                    mem[mem[64] + 64] = 224
                    mem[_2164 + 224] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]
                    _2166 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]
                    mem[_2164 + 256 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 613])] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 645 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 613])]
                    emit 0xd51c6476: mem[mem[64] len (32 * _2166) + _2164 + -mem[64] + 256], sub_1e2b9b48
                else:
                    s = 0
                    idx = ceil32(arg5.length) + ceil32(return_data.size) + 645
                    while ceil32(arg5.length) + ceil32(return_data.size) + (32 * mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]) + 645 > idx:
                        sub_9dc01447[stor11][s + 3].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]) + 31) >> 5
                    while sub_9dc01447[stor11].field_768 > idx:
                        sub_9dc01447[stor11][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[32] = 16
                    sub_9dc01447[stor11].field_1024 = arg1
                    sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                    sub_9dc01447[stor11].field_1536 = arg4
                    sub_9dc01447[stor11].field_1792 = block.number
                    mem[0] = sub_1e2b9b48
                    sub_9dc01447[stor11].field_256 = arg3
                    _2724 = mem[64]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[mem[64] + 96] = arg1
                    mem[mem[64] + 128] = sub_a1c7836b
                    mem[mem[64] + 160] = arg4
                    mem[mem[64] + 192] = arg3
                    mem[mem[64] + 64] = 224
                    mem[_2724 + 224] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]
                    _2726 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 613]
                    mem[_2724 + 256 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 613])] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 645 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 613])]
                    emit 0xd51c6476: mem[mem[64] len (32 * _2726) + _2724 + -mem[64] + 256], sub_1e2b9b48
    else:
        mem[ceil32(arg5.length) + 356] = 2
        require ext_code.size(sub_8ec98031Address)
        staticcall sub_8ec98031Address.getWeth() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg5.length) + 388] = ext_call.return_data[12 len 20]
        mem[ceil32(arg5.length) + 420] = arg3
        mem[ceil32(arg5.length) + 552 len 0] = None
        require ext_code.size(sub_8ec98031Address)
        staticcall sub_8ec98031Address.0xc0fa81a with:
                gas gas_remaining wei
               args arg1 * sub_a1c7836b, Array(len=2, data=mem[ceil32(arg5.length) + 552 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg4 < ext_call.return_data[0] * sub_9b4768a1 / 100000:
            revert with 0, 'ERROR: PRICE SLIPPAGE (MIN)'
        if arg4 > ext_call.return_data[0] * sub_87667e0e / 100000:
            revert with 0, 'ERROR: PRICE SLIPPAGE (MAX)'
        mem[ceil32(arg5.length) + 488] = msg.sender
        mem[ceil32(arg5.length) + 520] = address(companyAddress)
        mem[ceil32(arg5.length) + 552] = arg4
        mem[ceil32(arg5.length) + 452] = 100
        mem[ceil32(arg5.length) + 488 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(arg5.length) + 484 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(arg5.length) + 584 len 96] = unknown_0x23b872dd(?????), msg.sender, address(companyAddress), 0, Mask(224, 32, arg4) >> 32
        mem[ceil32(arg5.length) + 708 len 4] = uint32(arg4)
        call arg3 with:
           funct uint32(stor1)
             gas gas_remaining wei
            args Mask(224, 32, arg4) << 480, mem[ceil32(arg5.length) + 680 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(arg5.length) + 701 len 7],
                            uint32(arg4),
                            mem[ceil32(arg5.length) + 712 len 4]
            if not arg5.length:
                mem[ceil32(arg5.length) + 616] = msg.sender
                mem[ceil32(arg5.length) + 648] = block.number
                mem[ceil32(arg5.length) + 680] = seed
                mem[ceil32(arg5.length) + 712] = 128
                mem[ceil32(arg5.length) + 744] = 3
                mem[ceil32(arg5.length) + 776] = 0x5245510000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg5.length) + 584] = 192
                require arg1 <= test266151307()
                mem[ceil32(arg5.length) + 808] = arg1
                mem[64] = ceil32(arg5.length) + (32 * arg1) + 840
                if not arg1:
                    mem[0] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[32] = 15
                    stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0 = msg.sender or Mask(96, 160, stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0)
                    idx = 0
                    while idx < arg1:
                        _2079 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = block.number
                        mem[mem[64] + 96] = seed
                        mem[mem[64] + 128] = 128
                        mem[mem[64] + 160] = 3
                        mem[mem[64] + 192] = 0x524e470000000000000000000000000000000000000000000000000000000000
                        _2080 = mem[64]
                        mem[mem[64]] = 192
                        mem[64] = mem[64] + 224
                        _2082 = sha3(mem[_2080 + 32 len mem[_2080]])
                        mem[_2079 + 228] = msg.sender
                        require ext_code.size(nftAddress)
                        call nftAddress.mint(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        mem[_2079 + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        seed = _2082
                        mem[32] = 15
                        stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256++
                        mem[0] = sha3(sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000), 15) + 1
                        stor[stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256 + ('array', 1, ('map', ('data', 'msg.sender', 'number', ('stor', ('name', 'stor10', 10)), 128, 3, 37212125072751642401020610878371451300904286891924156678310116369885992845312), ('name', 'stor15', 15)))].field_0 = ext_call.return_data[0]
                        require idx < mem[ceil32(arg5.length) + 808]
                        mem[(32 * idx) + ceil32(arg5.length) + 840] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if arg1 > sub_b5574f73:
                        revert with 0, 'SafeMath:OVERFLOW_SUB'
                    sub_b5574f73 -= arg1
                    mem[32] = 16
                    sub_9dc01447[stor11].field_0 = msg.sender or Mask(96, 160, sub_9dc01447[stor11].field_0)
                    sub_9dc01447[stor11].field_512 = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    sub_9dc01447[stor11].field_768 = mem[ceil32(arg5.length) + 808]
                    mem[0] = sha3(sub_1e2b9b48, 16) + 3
                    if not mem[ceil32(arg5.length) + 808]:
                        idx = 0
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _2628 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_2628 + 224] = mem[ceil32(arg5.length) + 808]
                        _2630 = mem[ceil32(arg5.length) + 808]
                        mem[_2628 + 256 len floor32(mem[ceil32(arg5.length) + 808])] = mem[ceil32(arg5.length) + 840 len floor32(mem[ceil32(arg5.length) + 808])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _2630) + _2628 + -mem[64] + 256], sub_1e2b9b48
                    else:
                        s = 0
                        idx = ceil32(arg5.length) + 840
                        while ceil32(arg5.length) + (32 * mem[ceil32(arg5.length) + 808]) + 840 > idx:
                            sub_9dc01447[stor11][s + 3].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[ceil32(arg5.length) + 808]) + 31) >> 5
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _2998 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_2998 + 224] = mem[ceil32(arg5.length) + 808]
                        _3000 = mem[ceil32(arg5.length) + 808]
                        mem[_2998 + 256 len floor32(mem[ceil32(arg5.length) + 808])] = mem[ceil32(arg5.length) + 840 len floor32(mem[ceil32(arg5.length) + 808])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _3000) + _2998 + -mem[64] + 256], sub_1e2b9b48
                else:
                    mem[ceil32(arg5.length) + 840 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                    mem[0] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[32] = 15
                    stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0 = msg.sender or Mask(96, 160, stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0)
                    idx = 0
                    while idx < arg1:
                        _2084 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = block.number
                        mem[mem[64] + 96] = seed
                        mem[mem[64] + 128] = 128
                        mem[mem[64] + 160] = 3
                        mem[mem[64] + 192] = 0x524e470000000000000000000000000000000000000000000000000000000000
                        _2085 = mem[64]
                        mem[mem[64]] = 192
                        mem[64] = mem[64] + 224
                        _2087 = sha3(mem[_2085 + 32 len mem[_2085]])
                        mem[_2084 + 228] = msg.sender
                        require ext_code.size(nftAddress)
                        call nftAddress.mint(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        mem[_2084 + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        seed = _2087
                        mem[32] = 15
                        stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256++
                        mem[0] = sha3(sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000), 15) + 1
                        stor[stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256 + ('array', 1, ('map', ('data', 'msg.sender', 'number', ('stor', ('name', 'stor10', 10)), 128, 3, 37212125072751642401020610878371451300904286891924156678310116369885992845312), ('name', 'stor15', 15)))].field_0 = ext_call.return_data[0]
                        require idx < mem[ceil32(arg5.length) + 808]
                        mem[(32 * idx) + ceil32(arg5.length) + 840] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if arg1 > sub_b5574f73:
                        revert with 0, 'SafeMath:OVERFLOW_SUB'
                    sub_b5574f73 -= arg1
                    mem[32] = 16
                    sub_9dc01447[stor11].field_0 = msg.sender or Mask(96, 160, sub_9dc01447[stor11].field_0)
                    sub_9dc01447[stor11].field_512 = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    sub_9dc01447[stor11].field_768 = mem[ceil32(arg5.length) + 808]
                    mem[0] = sha3(sub_1e2b9b48, 16) + 3
                    if not mem[ceil32(arg5.length) + 808]:
                        idx = 0
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _2636 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_2636 + 224] = mem[ceil32(arg5.length) + 808]
                        _2638 = mem[ceil32(arg5.length) + 808]
                        mem[_2636 + 256 len floor32(mem[ceil32(arg5.length) + 808])] = mem[ceil32(arg5.length) + 840 len floor32(mem[ceil32(arg5.length) + 808])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _2638) + _2636 + -mem[64] + 256], sub_1e2b9b48
                    else:
                        s = 0
                        idx = ceil32(arg5.length) + 840
                        while ceil32(arg5.length) + (32 * mem[ceil32(arg5.length) + 808]) + 840 > idx:
                            sub_9dc01447[stor11][s + 3].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[ceil32(arg5.length) + 808]) + 31) >> 5
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _3008 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_3008 + 224] = mem[ceil32(arg5.length) + 808]
                        _3010 = mem[ceil32(arg5.length) + 808]
                        mem[_3008 + 256 len floor32(mem[ceil32(arg5.length) + 808])] = mem[ceil32(arg5.length) + 840 len floor32(mem[ceil32(arg5.length) + 808])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _3010) + _3008 + -mem[64] + 256], sub_1e2b9b48
            else:
                require arg5.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                49,
                                0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[ceil32(arg5.length) + 701 len 7],
                                uint32(arg4),
                                mem[ceil32(arg5.length) + 712 len 4]
                mem[ceil32(arg5.length) + 616] = msg.sender
                mem[ceil32(arg5.length) + 648] = block.number
                mem[ceil32(arg5.length) + 680] = seed
                mem[ceil32(arg5.length) + 712] = 128
                mem[ceil32(arg5.length) + 744] = 3
                mem[ceil32(arg5.length) + 776] = 0x5245510000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg5.length) + 584] = 192
                require arg1 <= test266151307()
                mem[ceil32(arg5.length) + 808] = arg1
                mem[64] = ceil32(arg5.length) + (32 * arg1) + 840
                if not arg1:
                    mem[0] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[32] = 15
                    stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0 = msg.sender or Mask(96, 160, stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0)
                    idx = 0
                    while idx < arg1:
                        _2089 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = block.number
                        mem[mem[64] + 96] = seed
                        mem[mem[64] + 128] = 128
                        mem[mem[64] + 160] = 3
                        mem[mem[64] + 192] = 0x524e470000000000000000000000000000000000000000000000000000000000
                        _2090 = mem[64]
                        mem[mem[64]] = 192
                        mem[64] = mem[64] + 224
                        _2092 = sha3(mem[_2090 + 32 len mem[_2090]])
                        mem[_2089 + 228] = msg.sender
                        require ext_code.size(nftAddress)
                        call nftAddress.mint(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        mem[_2089 + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        seed = _2092
                        mem[32] = 15
                        stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256++
                        mem[0] = sha3(sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000), 15) + 1
                        stor[stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256 + ('array', 1, ('map', ('data', 'msg.sender', 'number', ('stor', ('name', 'stor10', 10)), 128, 3, 37212125072751642401020610878371451300904286891924156678310116369885992845312), ('name', 'stor15', 15)))].field_0 = ext_call.return_data[0]
                        require idx < mem[ceil32(arg5.length) + 808]
                        mem[(32 * idx) + ceil32(arg5.length) + 840] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if arg1 > sub_b5574f73:
                        revert with 0, 'SafeMath:OVERFLOW_SUB'
                    sub_b5574f73 -= arg1
                    mem[32] = 16
                    sub_9dc01447[stor11].field_0 = msg.sender or Mask(96, 160, sub_9dc01447[stor11].field_0)
                    sub_9dc01447[stor11].field_512 = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    sub_9dc01447[stor11].field_768 = mem[ceil32(arg5.length) + 808]
                    mem[0] = sha3(sub_1e2b9b48, 16) + 3
                    if not mem[ceil32(arg5.length) + 808]:
                        idx = 0
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _2644 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_2644 + 224] = mem[ceil32(arg5.length) + 808]
                        _2646 = mem[ceil32(arg5.length) + 808]
                        mem[_2644 + 256 len floor32(mem[ceil32(arg5.length) + 808])] = mem[ceil32(arg5.length) + 840 len floor32(mem[ceil32(arg5.length) + 808])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _2646) + _2644 + -mem[64] + 256], sub_1e2b9b48
                    else:
                        s = 0
                        idx = ceil32(arg5.length) + 840
                        while ceil32(arg5.length) + (32 * mem[ceil32(arg5.length) + 808]) + 840 > idx:
                            sub_9dc01447[stor11][s + 3].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[ceil32(arg5.length) + 808]) + 31) >> 5
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _3018 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_3018 + 224] = mem[ceil32(arg5.length) + 808]
                        _3020 = mem[ceil32(arg5.length) + 808]
                        mem[_3018 + 256 len floor32(mem[ceil32(arg5.length) + 808])] = mem[ceil32(arg5.length) + 840 len floor32(mem[ceil32(arg5.length) + 808])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _3020) + _3018 + -mem[64] + 256], sub_1e2b9b48
                else:
                    mem[ceil32(arg5.length) + 840 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                    mem[0] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[32] = 15
                    stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0 = msg.sender or Mask(96, 160, stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0)
                    idx = 0
                    while idx < arg1:
                        _2094 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = block.number
                        mem[mem[64] + 96] = seed
                        mem[mem[64] + 128] = 128
                        mem[mem[64] + 160] = 3
                        mem[mem[64] + 192] = 0x524e470000000000000000000000000000000000000000000000000000000000
                        _2095 = mem[64]
                        mem[mem[64]] = 192
                        mem[64] = mem[64] + 224
                        _2097 = sha3(mem[_2095 + 32 len mem[_2095]])
                        mem[_2094 + 228] = msg.sender
                        require ext_code.size(nftAddress)
                        call nftAddress.mint(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        mem[_2094 + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        seed = _2097
                        mem[32] = 15
                        stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256++
                        mem[0] = sha3(sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000), 15) + 1
                        stor[stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256 + ('array', 1, ('map', ('data', 'msg.sender', 'number', ('stor', ('name', 'stor10', 10)), 128, 3, 37212125072751642401020610878371451300904286891924156678310116369885992845312), ('name', 'stor15', 15)))].field_0 = ext_call.return_data[0]
                        require idx < mem[ceil32(arg5.length) + 808]
                        mem[(32 * idx) + ceil32(arg5.length) + 840] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if arg1 > sub_b5574f73:
                        revert with 0, 'SafeMath:OVERFLOW_SUB'
                    sub_b5574f73 -= arg1
                    mem[32] = 16
                    sub_9dc01447[stor11].field_0 = msg.sender or Mask(96, 160, sub_9dc01447[stor11].field_0)
                    sub_9dc01447[stor11].field_512 = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    sub_9dc01447[stor11].field_768 = mem[ceil32(arg5.length) + 808]
                    mem[0] = sha3(sub_1e2b9b48, 16) + 3
                    if not mem[ceil32(arg5.length) + 808]:
                        idx = 0
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _2652 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_2652 + 224] = mem[ceil32(arg5.length) + 808]
                        _2654 = mem[ceil32(arg5.length) + 808]
                        mem[_2652 + 256 len floor32(mem[ceil32(arg5.length) + 808])] = mem[ceil32(arg5.length) + 840 len floor32(mem[ceil32(arg5.length) + 808])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _2654) + _2652 + -mem[64] + 256], sub_1e2b9b48
                    else:
                        s = 0
                        idx = ceil32(arg5.length) + 840
                        while ceil32(arg5.length) + (32 * mem[ceil32(arg5.length) + 808]) + 840 > idx:
                            sub_9dc01447[stor11][s + 3].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[ceil32(arg5.length) + 808]) + 31) >> 5
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _3028 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_3028 + 224] = mem[ceil32(arg5.length) + 808]
                        _3030 = mem[ceil32(arg5.length) + 808]
                        mem[_3028 + 256 len floor32(mem[ceil32(arg5.length) + 808])] = mem[ceil32(arg5.length) + 840 len floor32(mem[ceil32(arg5.length) + 808])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _3030) + _3028 + -mem[64] + 256], sub_1e2b9b48
        else:
            mem[ceil32(arg5.length) + 584] = return_data.size
            mem[ceil32(arg5.length) + 616 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 702 len 15]
            if not return_data.size:
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 617] = msg.sender
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 649] = block.number
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 681] = seed
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 713] = 128
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 745] = 3
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 777] = 0x5245510000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 585] = 192
                require arg1 <= test266151307()
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 809] = arg1
                mem[64] = ceil32(arg5.length) + ceil32(return_data.size) + (32 * arg1) + 841
                if not arg1:
                    mem[0] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[32] = 15
                    stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0 = msg.sender or Mask(96, 160, stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0)
                    idx = 0
                    while idx < arg1:
                        _2099 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = block.number
                        mem[mem[64] + 96] = seed
                        mem[mem[64] + 128] = 128
                        mem[mem[64] + 160] = 3
                        mem[mem[64] + 192] = 0x524e470000000000000000000000000000000000000000000000000000000000
                        _2100 = mem[64]
                        mem[mem[64]] = 192
                        mem[64] = mem[64] + 224
                        _2102 = sha3(mem[_2100 + 32 len mem[_2100]])
                        mem[_2099 + 228] = msg.sender
                        require ext_code.size(nftAddress)
                        call nftAddress.mint(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        mem[_2099 + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        seed = _2102
                        mem[32] = 15
                        stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256++
                        mem[0] = sha3(sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000), 15) + 1
                        stor[stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256 + ('array', 1, ('map', ('data', 'msg.sender', 'number', ('stor', ('name', 'stor10', 10)), 128, 3, 37212125072751642401020610878371451300904286891924156678310116369885992845312), ('name', 'stor15', 15)))].field_0 = ext_call.return_data[0]
                        require idx < mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        mem[(32 * idx) + ceil32(arg5.length) + ceil32(return_data.size) + 841] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if arg1 > sub_b5574f73:
                        revert with 0, 'SafeMath:OVERFLOW_SUB'
                    sub_b5574f73 -= arg1
                    mem[32] = 16
                    sub_9dc01447[stor11].field_0 = msg.sender or Mask(96, 160, sub_9dc01447[stor11].field_0)
                    sub_9dc01447[stor11].field_512 = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    sub_9dc01447[stor11].field_768 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                    mem[0] = sha3(sub_1e2b9b48, 16) + 3
                    if not mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]:
                        idx = 0
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _2660 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_2660 + 224] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        _2662 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        mem[_2660 + 256 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 841 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _2662) + _2660 + -mem[64] + 256], sub_1e2b9b48
                    else:
                        s = 0
                        idx = ceil32(arg5.length) + ceil32(return_data.size) + 841
                        while ceil32(arg5.length) + ceil32(return_data.size) + (32 * mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]) + 841 > idx:
                            sub_9dc01447[stor11][s + 3].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]) + 31) >> 5
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _3038 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_3038 + 224] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        _3040 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        mem[_3038 + 256 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 841 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _3040) + _3038 + -mem[64] + 256], sub_1e2b9b48
                else:
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 841 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                    mem[0] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[32] = 15
                    stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0 = msg.sender or Mask(96, 160, stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0)
                    idx = 0
                    while idx < arg1:
                        _2104 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = block.number
                        mem[mem[64] + 96] = seed
                        mem[mem[64] + 128] = 128
                        mem[mem[64] + 160] = 3
                        mem[mem[64] + 192] = 0x524e470000000000000000000000000000000000000000000000000000000000
                        _2105 = mem[64]
                        mem[mem[64]] = 192
                        mem[64] = mem[64] + 224
                        _2107 = sha3(mem[_2105 + 32 len mem[_2105]])
                        mem[_2104 + 228] = msg.sender
                        require ext_code.size(nftAddress)
                        call nftAddress.mint(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        mem[_2104 + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        seed = _2107
                        mem[32] = 15
                        stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256++
                        mem[0] = sha3(sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000), 15) + 1
                        stor[stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256 + ('array', 1, ('map', ('data', 'msg.sender', 'number', ('stor', ('name', 'stor10', 10)), 128, 3, 37212125072751642401020610878371451300904286891924156678310116369885992845312), ('name', 'stor15', 15)))].field_0 = ext_call.return_data[0]
                        require idx < mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        mem[(32 * idx) + ceil32(arg5.length) + ceil32(return_data.size) + 841] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if arg1 > sub_b5574f73:
                        revert with 0, 'SafeMath:OVERFLOW_SUB'
                    sub_b5574f73 -= arg1
                    mem[32] = 16
                    sub_9dc01447[stor11].field_0 = msg.sender or Mask(96, 160, sub_9dc01447[stor11].field_0)
                    sub_9dc01447[stor11].field_512 = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    sub_9dc01447[stor11].field_768 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                    mem[0] = sha3(sub_1e2b9b48, 16) + 3
                    if not mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]:
                        idx = 0
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _2668 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_2668 + 224] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        _2670 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        mem[_2668 + 256 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 841 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _2670) + _2668 + -mem[64] + 256], sub_1e2b9b48
                    else:
                        s = 0
                        idx = ceil32(arg5.length) + ceil32(return_data.size) + 841
                        while ceil32(arg5.length) + ceil32(return_data.size) + (32 * mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]) + 841 > idx:
                            sub_9dc01447[stor11][s + 3].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]) + 31) >> 5
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _3048 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_3048 + 224] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        _3050 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        mem[_3048 + 256 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 841 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _3050) + _3048 + -mem[64] + 256], sub_1e2b9b48
            else:
                require return_data.size >= 32
                if not mem[ceil32(arg5.length) + 616]:
                    revert with 0, 
                                32,
                                49,
                                0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + 702 len 15]
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 617] = msg.sender
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 649] = block.number
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 681] = seed
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 713] = 128
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 745] = 3
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 777] = 0x5245510000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 585] = 192
                require arg1 <= test266151307()
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 809] = arg1
                mem[64] = ceil32(arg5.length) + ceil32(return_data.size) + (32 * arg1) + 841
                if not arg1:
                    mem[0] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[32] = 15
                    stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0 = msg.sender or Mask(96, 160, stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0)
                    idx = 0
                    while idx < arg1:
                        _2109 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = block.number
                        mem[mem[64] + 96] = seed
                        mem[mem[64] + 128] = 128
                        mem[mem[64] + 160] = 3
                        mem[mem[64] + 192] = 0x524e470000000000000000000000000000000000000000000000000000000000
                        _2110 = mem[64]
                        mem[mem[64]] = 192
                        mem[64] = mem[64] + 224
                        _2112 = sha3(mem[_2110 + 32 len mem[_2110]])
                        mem[_2109 + 228] = msg.sender
                        require ext_code.size(nftAddress)
                        call nftAddress.mint(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        mem[_2109 + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        seed = _2112
                        mem[32] = 15
                        stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256++
                        mem[0] = sha3(sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000), 15) + 1
                        stor[stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256 + ('array', 1, ('map', ('data', 'msg.sender', 'number', ('stor', ('name', 'stor10', 10)), 128, 3, 37212125072751642401020610878371451300904286891924156678310116369885992845312), ('name', 'stor15', 15)))].field_0 = ext_call.return_data[0]
                        require idx < mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        mem[(32 * idx) + ceil32(arg5.length) + ceil32(return_data.size) + 841] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if arg1 > sub_b5574f73:
                        revert with 0, 'SafeMath:OVERFLOW_SUB'
                    sub_b5574f73 -= arg1
                    mem[32] = 16
                    sub_9dc01447[stor11].field_0 = msg.sender or Mask(96, 160, sub_9dc01447[stor11].field_0)
                    sub_9dc01447[stor11].field_512 = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    sub_9dc01447[stor11].field_768 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                    mem[0] = sha3(sub_1e2b9b48, 16) + 3
                    if not mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]:
                        idx = 0
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _2676 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_2676 + 224] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        _2678 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        mem[_2676 + 256 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 841 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _2678) + _2676 + -mem[64] + 256], sub_1e2b9b48
                    else:
                        s = 0
                        idx = ceil32(arg5.length) + ceil32(return_data.size) + 841
                        while ceil32(arg5.length) + ceil32(return_data.size) + (32 * mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]) + 841 > idx:
                            sub_9dc01447[stor11][s + 3].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]) + 31) >> 5
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _3058 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_3058 + 224] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        _3060 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        mem[_3058 + 256 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 841 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _3060) + _3058 + -mem[64] + 256], sub_1e2b9b48
                else:
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 841 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                    mem[0] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    mem[32] = 15
                    stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0 = msg.sender or Mask(96, 160, stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_0)
                    idx = 0
                    while idx < arg1:
                        _2114 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = block.number
                        mem[mem[64] + 96] = seed
                        mem[mem[64] + 128] = 128
                        mem[mem[64] + 160] = 3
                        mem[mem[64] + 192] = 0x524e470000000000000000000000000000000000000000000000000000000000
                        _2115 = mem[64]
                        mem[mem[64]] = 192
                        mem[64] = mem[64] + 224
                        _2117 = sha3(mem[_2115 + 32 len mem[_2115]])
                        mem[_2114 + 228] = msg.sender
                        require ext_code.size(nftAddress)
                        call nftAddress.mint(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        mem[_2114 + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        seed = _2117
                        mem[32] = 15
                        stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256++
                        mem[0] = sha3(sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000), 15) + 1
                        stor[stor15[msg.sender][block.number][stor10][128][3][0x5245510000000000000000000000000000000000000000000000000000000000].field_256 + ('array', 1, ('map', ('data', 'msg.sender', 'number', ('stor', ('name', 'stor10', 10)), 128, 3, 37212125072751642401020610878371451300904286891924156678310116369885992845312), ('name', 'stor15', 15)))].field_0 = ext_call.return_data[0]
                        require idx < mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        mem[(32 * idx) + ceil32(arg5.length) + ceil32(return_data.size) + 841] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if arg1 > sub_b5574f73:
                        revert with 0, 'SafeMath:OVERFLOW_SUB'
                    sub_b5574f73 -= arg1
                    mem[32] = 16
                    sub_9dc01447[stor11].field_0 = msg.sender or Mask(96, 160, sub_9dc01447[stor11].field_0)
                    sub_9dc01447[stor11].field_512 = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                    sub_9dc01447[stor11].field_768 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                    mem[0] = sha3(sub_1e2b9b48, 16) + 3
                    if not mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]:
                        idx = 0
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _2684 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_2684 + 224] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        _2686 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        mem[_2684 + 256 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 841 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _2686) + _2684 + -mem[64] + 256], sub_1e2b9b48
                    else:
                        s = 0
                        idx = ceil32(arg5.length) + ceil32(return_data.size) + 841
                        while ceil32(arg5.length) + ceil32(return_data.size) + (32 * mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]) + 841 > idx:
                            sub_9dc01447[stor11][s + 3].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]) + 31) >> 5
                        while sub_9dc01447[stor11].field_768 > idx:
                            sub_9dc01447[stor11][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[32] = 16
                        sub_9dc01447[stor11].field_1024 = arg1
                        sub_9dc01447[stor11].field_1280 = sub_a1c7836b
                        sub_9dc01447[stor11].field_1536 = arg4
                        sub_9dc01447[stor11].field_1792 = block.number
                        mem[0] = sub_1e2b9b48
                        sub_9dc01447[stor11].field_256 = arg3
                        _3068 = mem[64]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = sha3(msg.sender, block.number, seed, 128, 3, 0x5245510000000000000000000000000000000000000000000000000000000000)
                        mem[mem[64] + 96] = arg1
                        mem[mem[64] + 128] = sub_a1c7836b
                        mem[mem[64] + 160] = arg4
                        mem[mem[64] + 192] = arg3
                        mem[mem[64] + 64] = 224
                        mem[_3068 + 224] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        _3070 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 809]
                        mem[_3068 + 256 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])] = mem[ceil32(arg5.length) + ceil32(return_data.size) + 841 len floor32(mem[ceil32(arg5.length) + ceil32(return_data.size) + 809])]
                        emit 0xd51c6476: mem[mem[64] len (32 * _3070) + _3068 + -mem[64] + 256], sub_1e2b9b48
    if sub_1e2b9b48 + 1 < sub_1e2b9b48:
        revert with 0, 'SafeMath:INVALID_ADD'
    sub_1e2b9b48++
    if arg1 + sub_faf8da60[msg.sender] < sub_faf8da60[msg.sender]:
        revert with 0, 'SafeMath:INVALID_ADD'
    sub_faf8da60[msg.sender] += arg1
}



}
