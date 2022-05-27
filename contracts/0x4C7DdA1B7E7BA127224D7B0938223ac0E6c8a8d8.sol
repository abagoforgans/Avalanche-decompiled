contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(msg.sender)

const sub_43ae37c3(?) = msg.sender


address owner;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 sub_11318b33;
uint8 stor7;
array of struct sub_0df0b408;
array of struct sub_4d843322;

function sub_0df0b408(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_0df0b408[address(arg1)].field_0)
}

function sub_11318b33(?) {
    return sub_11318b33
}

function sub_30c5f595(?) {
    return address(stor3.length)
}

function sub_3fa7c848(?) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_0df0b408[arg1].field_0)
    return sub_0df0b408[arg1][arg2].field_0, 
           uint256(sub_0df0b408[arg1][arg2].field_256),
           uint256(sub_0df0b408[arg1][arg2].field_512),
           uint256(sub_0df0b408[arg1][arg2].field_768),
           uint256(sub_0df0b408[arg1][arg2].field_1024),
           uint256(sub_0df0b408[arg1][arg2].field_1280)
}

function sub_4d843322(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_4d843322[address(arg1)].field_0)
}

function sub_5a3cc484(?) {
    return address(stor1.length)
}

function paused() {
    return bool(stor7)
}

function sub_6ffa9c10(?) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_4d843322[arg1].field_0)
    return sub_4d843322[arg1][arg2].field_0, 
           uint256(sub_4d843322[arg1][arg2].field_256),
           uint256(sub_4d843322[arg1][arg2].field_512),
           uint256(sub_4d843322[arg1][arg2].field_768)
}

function owner() {
    return owner
}

function currentUser() {
    return address(stor4.length)
}

function sub_aac4c5c4(?) {
    return stor5.length
}

function feeCollector() {
    return address(stor2.length)
}

function destroySmartContract(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You are not the owner!!!'
    if bool(stor7) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0xfe436f6e7472616374205374617475733a204e6f742d506175736564202d204d7573742066697273742070617573652121,
                    mem[213 len 15]
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You are not the owner!!!'
    stor7 = uint8(arg1)
}

function sub_5b56410b(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'You are not the owner!!!'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2181165d(?) payable {
    if 10^17 != msg.value:
        revert with 0, 'Withdorwal Fee Amount 0.1 AVAX'
    call address(stor2.length) with:
       value 10^17 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(sub_4d843322[address(msg.sender)].field_0)++
    sub_4d843322[address(msg.sender)][uint256(sub_4d843322[address(msg.sender)].field_0)].field_0 = msg.sender
    uint256(sub_4d843322[address(msg.sender)][uint256(sub_4d843322[address(msg.sender)].field_0)].field_256) = 10^17
    uint256(sub_4d843322[address(msg.sender)][uint256(sub_4d843322[address(msg.sender)].field_0)].field_512) = block.timestamp
    uint256(sub_4d843322[address(msg.sender)][uint256(sub_4d843322[address(msg.sender)].field_0)].field_768) = stor5.length
    if not uint256(sub_4d843322[address(msg.sender)].field_0):
        idx = 0
        while 4 * uint256(sub_4d843322[address(msg.sender)].field_0) > idx:
            sub_4d843322[address(msg.sender)][idx].field_0 = 0
            uint256(sub_4d843322[address(msg.sender)][idx].field_256) = 0
            uint256(sub_4d843322[address(msg.sender)][idx].field_512) = 0
            uint256(sub_4d843322[address(msg.sender)][idx].field_768) = 0
            idx = idx + 4
            continue 
    else:
        s = 0
        idx = 0
        while 4 * uint256(sub_4d843322[address(msg.sender)].field_0) > idx:
            sub_4d843322[address(msg.sender)][s].field_0 = sub_4d843322[address(msg.sender)][idx].field_0
            uint256(sub_4d843322[address(msg.sender)][s].field_256) = uint256(sub_4d843322[address(msg.sender)][idx].field_256)
            uint256(sub_4d843322[address(msg.sender)][s].field_512) = uint256(sub_4d843322[address(msg.sender)][idx].field_512)
            uint256(sub_4d843322[address(msg.sender)][s].field_768) = uint256(sub_4d843322[address(msg.sender)][idx].field_768)
            s = s + 4
            idx = idx + 4
            continue 
        idx = Mask(252, 2, (4 * uint256(sub_4d843322[address(msg.sender)].field_0)) + 3)
        while 4 * uint256(sub_4d843322[address(msg.sender)].field_0) > idx:
            sub_4d843322[address(msg.sender)][idx].field_0 = 0
            uint256(sub_4d843322[address(msg.sender)][idx].field_256) = 0
            uint256(sub_4d843322[address(msg.sender)][idx].field_512) = 0
            uint256(sub_4d843322[address(msg.sender)][idx].field_768) = 0
            idx = idx + 4
            continue 
}

function stake() payable {
    sub_11318b33 += msg.value
    call address(stor2.length) with:
       value 10^17 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(stor1.length) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    uint256(sub_0df0b408[address(msg.sender)].field_0)++
    sub_0df0b408[address(msg.sender)][uint256(sub_0df0b408[address(msg.sender)].field_0)].field_0 = msg.sender
    uint256(sub_0df0b408[address(msg.sender)][uint256(sub_0df0b408[address(msg.sender)].field_0)].field_256) = msg.value
    uint256(sub_0df0b408[address(msg.sender)][uint256(sub_0df0b408[address(msg.sender)].field_0)].field_512) = 10^17
    uint256(sub_0df0b408[address(msg.sender)][uint256(sub_0df0b408[address(msg.sender)].field_0)].field_768) = msg.value - 10^17
    uint256(sub_0df0b408[address(msg.sender)][uint256(sub_0df0b408[address(msg.sender)].field_0)].field_1024) = block.timestamp
    uint256(sub_0df0b408[address(msg.sender)][uint256(sub_0df0b408[address(msg.sender)].field_0)].field_1280) = stor5.length
    if not uint256(sub_0df0b408[address(msg.sender)].field_0):
        idx = 0
        while 6 * uint256(sub_0df0b408[address(msg.sender)].field_0) > idx:
            sub_0df0b408[address(msg.sender)][idx].field_0 = 0
            uint256(sub_0df0b408[address(msg.sender)][idx].field_256) = 0
            uint256(sub_0df0b408[address(msg.sender)][idx].field_512) = 0
            uint256(sub_0df0b408[address(msg.sender)][idx].field_768) = 0
            uint256(sub_0df0b408[address(msg.sender)][idx].field_1024) = 0
            uint256(sub_0df0b408[address(msg.sender)][idx].field_1280) = 0
            idx = idx + 6
            continue 
    else:
        s = 0
        idx = 0
        while 6 * uint256(sub_0df0b408[address(msg.sender)].field_0) > idx:
            sub_0df0b408[address(msg.sender)][s].field_0 = sub_0df0b408[address(msg.sender)][idx].field_0
            uint256(sub_0df0b408[address(msg.sender)][s].field_256) = uint256(sub_0df0b408[address(msg.sender)][idx].field_256)
            uint256(sub_0df0b408[address(msg.sender)][s].field_512) = uint256(sub_0df0b408[address(msg.sender)][idx].field_512)
            uint256(sub_0df0b408[address(msg.sender)][s].field_768) = uint256(sub_0df0b408[address(msg.sender)][idx].field_768)
            uint256(sub_0df0b408[address(msg.sender)][s].field_1024) = uint256(sub_0df0b408[address(msg.sender)][idx].field_1024)
            uint256(sub_0df0b408[address(msg.sender)][s].field_1280) = uint256(sub_0df0b408[address(msg.sender)][idx].field_1280)
            s = s + 6
            idx = idx + 6
            continue 
        idx = s
        while sha3(sha3(address(msg.sender), 8)) + (6 * uint256(sub_0df0b408[address(msg.sender)].field_0)) > idx:
            stor[idx] = 0
            uint256(stor1[idx]) = 0
            uint256(stor2[idx]) = 0
            uint256(stor3[idx]) = 0
            uint256(stor4[idx]) = 0
            stor5[idx] = 0
            idx = idx + 6
            continue 
}



}
