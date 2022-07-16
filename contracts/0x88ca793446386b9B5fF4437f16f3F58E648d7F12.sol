contract main {




// =====================  Runtime code  =====================


address owner;
address oracleAddress;
address sub_f500c693Address;
uint256 sub_dd3a85bc;
uint256 sub_3d22b821;
mapping of struct sub_40ac9993;
mapping of uint256 sub_185dc10c;
address sub_5f10c23cAddress;
uint256 sub_9df33d2e;

function sub_185dc10c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_185dc10c[arg1]
}

function sub_3d22b821(?) {
    return sub_3d22b821
}

function sub_40ac9993(?) {
    require calldata.size - 4 >= 32
    return sub_40ac9993[arg1].field_0, 
           bool(sub_40ac9993[arg1].field_768),
           sub_40ac9993[arg1].field_1024,
           sub_40ac9993[arg1].field_1280
}

function sub_5f10c23c(?) {
    return sub_5f10c23cAddress
}

function sub_6475e187(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_40ac9993[stor6[address(arg1)]].field_1280 >= sub_40ac9993[stor6[address(arg1)]].field_512:
        revert with 0, 50
    return stor[('array', 2, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))), ('name', 'sub_40ac9993', 5))) + sub_40ac9993[stor6[address(arg1)]].field_1280].field_0
}

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function sub_9df33d2e(?) {
    return sub_9df33d2e
}

function sub_dd3a85bc(?) {
    return sub_dd3a85bc
}

function sub_f500c693(?) {
    return sub_f500c693Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function sub_f7045f27(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9df33d2e = arg1
}

function setOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    oracleAddress = arg1
}

function setEcosystem(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5f10c23cAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function requestData() payable {
    if sub_9df33d2e != msg.value:
        revert with 0, 'AVAX required'
    if sub_185dc10c[msg.sender]:
        revert with 0, 'Already Requested'
    if sub_dd3a85bc == -1:
        revert with 0, 17
    sub_dd3a85bc++
    sub_40ac9993[stor3].field_0 = msg.sender or Mask(96, 160, sub_40ac9993[stor3].field_0)
    sub_185dc10c[msg.sender] = sub_dd3a85bc
    return sub_dd3a85bc
}

function getNext(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_40ac9993[stor6[address(arg1)]].field_1280 >= sub_40ac9993[stor6[address(arg1)]].field_512:
        revert with 0, 'No Factories to Process'
    if sub_40ac9993[stor6[address(arg1)]].field_1280 >= sub_40ac9993[stor6[address(arg1)]].field_512:
        revert with 0, 50
    if sub_40ac9993[stor6[address(arg1)]].field_1280 == -1:
        revert with 0, 17
    sub_40ac9993[stor6[address(arg1)]].field_1280++
    return stor[('array', 2, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))), ('name', 'sub_40ac9993', 5))) + sub_40ac9993[stor6[address(arg1)]].field_1280].field_0
}

function sub_e0fd99c6(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307() or ceil32(32 * ('cd', 68).length) + 98 < 97:
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require (32 * ('cd', 68).length) + cd[68] + 36 <= calldata.size
    idx = cd[68] + 36
    s = ceil32(32 * ('cd', 36).length) + 129
    while idx < (32 * ('cd', 68).length) + cd[68] + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if oracleAddress != msg.sender:
        revert with 0, 'Oracle Only'
    if sub_40ac9993[cd[4]].field_768:
        revert with 0, 'Already Processed'
    if sub_3d22b821 >= sub_dd3a85bc:
        revert with 0, 'Already Processed'
    sub_40ac9993[cd[4]].field_256 = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_40ac9993[cd[4]].field_256 > idx:
            sub_40ac9993[cd[4]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 36).length) + 128 > idx:
            sub_40ac9993[cd[4]][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_40ac9993[cd[4]].field_256 > idx:
            sub_40ac9993[cd[4]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    sub_40ac9993[cd[4]].field_512 = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while sub_40ac9993[cd[4]].field_512 > idx:
            sub_40ac9993[cd[4]][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(32 * ('cd', 36).length) + 129
        while ceil32(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 129 > idx:
            sub_40ac9993[cd[4]][s + 2].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while sub_40ac9993[cd[4]].field_512 > idx:
            sub_40ac9993[cd[4]][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    sub_40ac9993[cd[4]].field_768 = 1
    if sub_3d22b821 == -1:
        revert with 0, 17
    sub_3d22b821++
}

function sub_04dc8283(?) {
    require calldata.size - 4 >= 32
    if not sub_40ac9993[arg1].field_256:
        if sub_40ac9993[arg1].field_512:
            mem[(32 * sub_40ac9993[arg1].field_256) + 160] = sub_40ac9993[arg1][2].field_0
            idx = (32 * sub_40ac9993[arg1].field_256) + 160
            s = 0
            while (32 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 128 > idx:
                mem[idx + 32] = sub_40ac9993[arg1][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(64 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 256] = sub_40ac9993[arg1].field_512
            mem[(64 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 288 len 32 * sub_40ac9993[arg1].field_512] = mem[(32 * sub_40ac9993[arg1].field_256) + 160 len 32 * sub_40ac9993[arg1].field_512]
            return Array(len=sub_40ac9993[arg1].field_256, data=mem[128 len 32 * sub_40ac9993[arg1].field_256], sub_40ac9993[arg1].field_512, mem[(32 * sub_40ac9993[arg1].field_256) + 160 len 32 * sub_40ac9993[arg1].field_512]), 
                   (32 * sub_40ac9993[arg1].field_256) + 96
        mem[(32 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 160] = 64
        mem[(32 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 224] = sub_40ac9993[arg1].field_256
        mem[(32 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 256 len 32 * sub_40ac9993[arg1].field_256] = mem[128 len 32 * sub_40ac9993[arg1].field_256]
        mem[(32 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 192] = (96 * sub_40ac9993[arg1].field_256) + 96
        mem[(64 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 256] = sub_40ac9993[arg1].field_512
        mem[(64 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 288 len 32 * sub_40ac9993[arg1].field_512] = mem[(32 * sub_40ac9993[arg1].field_256) + 160 len 32 * sub_40ac9993[arg1].field_512]
        return memory
          from (32 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 160
           len (96 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 128
    mem[128] = sub_40ac9993[arg1][1].field_0
    idx = 128
    s = 0
    while (32 * sub_40ac9993[arg1].field_256) + 96 > idx:
        mem[idx + 32] = sub_40ac9993[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_40ac9993[arg1].field_512:
        mem[(32 * sub_40ac9993[arg1].field_256) + 160] = sub_40ac9993[arg1][2].field_0
        idx = (32 * sub_40ac9993[arg1].field_256) + 160
        s = 0
        while (32 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 128 > idx:
            mem[idx + 32] = sub_40ac9993[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(64 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 256] = sub_40ac9993[arg1].field_512
    mem[(64 * sub_40ac9993[arg1].field_256) + (32 * sub_40ac9993[arg1].field_512) + 288 len 32 * sub_40ac9993[arg1].field_512] = mem[(32 * sub_40ac9993[arg1].field_256) + 160 len 32 * sub_40ac9993[arg1].field_512]
    return Array(len=sub_40ac9993[arg1].field_256, data=mem[128 len 32 * sub_40ac9993[arg1].field_256], sub_40ac9993[arg1].field_512, mem[(32 * sub_40ac9993[arg1].field_256) + 160 len 32 * sub_40ac9993[arg1].field_512]), 
           (32 * sub_40ac9993[arg1].field_256) + 96
}



}
