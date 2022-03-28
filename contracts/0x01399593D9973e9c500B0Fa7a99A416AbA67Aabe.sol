contract main {




// =====================  Runtime code  =====================


const name = 'CryptoDappers', 0

const getBalance = eth.balance(this.address)

const symbol = 'CDS', 0


address ceoAddress;
address cfoAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address cooAddress;
uint256 sub_73610f4d;
mapping of address sub_d514de31;
mapping of uint256 balanceOf;
mapping of address sub_dfb96c73;
address sub_69c8de8bAddress;
address erc721MetadataAddress;
uint256 sub_a114dcee;
uint256 LATEST_CLAIMED_ID;

function cfoAddress() {
    return cfoAddress
}

function ceoAddress() {
    return ceoAddress
}

function totalSupply() {
    return sub_73610f4d
}

function paused() {
    return bool(uint8(stor2.field_160))
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_d514de31[arg1]
}

function sub_69c8de8b(?) {
    return sub_69c8de8bAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_73610f4d(?) {
    return sub_73610f4d
}

function sub_a114dcee(?) {
    return sub_a114dcee
}

function cooAddress() {
    return cooAddress
}

function erc721Metadata() {
    return erc721MetadataAddress
}

function ownershipTokenCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function sub_d514de31(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_d514de31[arg1]
}

function sub_dfb96c73(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_dfb96c73[arg1]
}

function LATEST_CLAIMED_ID() {
    return LATEST_CLAIMED_ID
}

function _fallback() payable {
  stop
}

function setCEO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function setCOO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == ceoAddress
    require arg1
    cooAddress = arg1
}

function setCFO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == ceoAddress
    require arg1
    cfoAddress = arg1
}

function owns(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return (sub_d514de31[arg2] == arg1)
}

function setMetadataAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == ceoAddress
    erc721MetadataAddress = arg1
}

function setPaused(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == ceoAddress
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function sub_0d6e5322(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    # nil
}

function sub_9c2bd779(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    sub_73610f4d = arg1
}

function setAddresses(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == ceoAddress
    erc721MetadataAddress = arg1
    sub_69c8de8bAddress = arg2
}

function withdrawBalance() {
    require msg.sender == cfoAddress
    call cfoAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require not uint8(stor2.field_160)
    require sub_d514de31[arg2] == msg.sender
    sub_dfb96c73[arg2] = arg1
    emit Approval(msg.sender, address(arg1), arg2);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x9a20483d00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000)
}

function sub_af029b28(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require not uint8(stor2.field_160)
    require sub_d514de31[arg1] == msg.sender
    sub_dfb96c73[arg1] = sub_69c8de8bAddress
    require ext_code.size(sub_69c8de8bAddress)
    call sub_69c8de8bAddress.0x3b358bf3 with:
         gas gas_remaining wei
        args arg1, arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_12161866(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xe10fe958 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    sub_69c8de8bAddress = address(arg1)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require not uint8(stor2.field_160)
    require arg1
    require arg1 != this.address
    require arg1 != sub_69c8de8bAddress
    require sub_d514de31[arg2] == msg.sender
    if balanceOf[address(arg1)] == -1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    sub_d514de31[arg2] = arg1
    if msg.sender:
        if not balanceOf[address(msg.sender)]:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]--
        sub_dfb96c73[arg2] = 0
        require ext_code.size(sub_69c8de8bAddress)
        call sub_69c8de8bAddress.0x96b5a755 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(msg.sender, address(arg1), arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require not uint8(stor2.field_160)
    require arg2
    require arg2 != this.address
    require sub_dfb96c73[arg3] == msg.sender
    require sub_d514de31[arg3] == arg1
    if balanceOf[address(arg2)] == -1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    sub_d514de31[arg3] = arg2
    if arg1:
        if not balanceOf[address(arg1)]:
            revert with 'NH{q', 17
        balanceOf[address(arg1)]--
        sub_dfb96c73[arg3] = 0
        require ext_code.size(sub_69c8de8bAddress)
        call sub_69c8de8bAddress.0x96b5a755 with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(address(arg1), address(arg2), arg3);
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    s = 0
    while idx < sub_73610f4d:
        mem[0] = idx
        mem[32] = 4
        if sub_d514de31[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = idx
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(erc721MetadataAddress)
    staticcall erc721MetadataAddress.0xc87b56dd with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128 > test266151307() or ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[ceil32(return_data.size) + _5 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function sub_480c979c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_73610f4d < sub_a114dcee:
        revert with 'NH{q', 17
    require arg1 <= sub_73610f4d - sub_a114dcee
    idx = 0
    s = sub_a114dcee
    t = 0
    while idx < arg1:
        if s < 125:
            if t > -330000000000000001:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t + 33 * 10^16
            continue 
        if s < 250:
            if t > -500000000000000001:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t + 5 * 10^17
            continue 
        if s < 500:
            if t > -750000000000000001:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t + 75 * 10^16
            continue 
        if s < 1000:
            if t > -1000000000000000001:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t + 10^18
            continue 
        if s < 1250:
            if t > -1250000000000000001:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t + 125 * 10^16
            continue 
        if s < 1500:
            if t > -1500000000000000001:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t + 15 * 10^17
            continue 
        if s < 1750:
            if t > -2000000000000000001:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t + 2 * 10^18
            continue 
        if s < 2000:
            if t > -2500000000000000001:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t + 25 * 10^17
            continue 
        if s < 2400:
            if t > -3000000000000000001:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t + 3 * 10^18
            continue 
        if s >= 2497:
            if t > -10000000000000000001:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t + 10 * 10^18
            continue 
        if t > -4000000000000000001:
            revert with 'NH{q', 17
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        t = t + 4 * 10^18
        continue 
    return t
}

function sub_6df748ad(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not uint8(stor2.field_160)
    require arg1 > 0
    if sub_73610f4d < sub_a114dcee:
        revert with 'NH{q', 17
    require arg1 <= sub_73610f4d - sub_a114dcee
    if sub_73610f4d < sub_a114dcee:
        revert with 'NH{q', 17
    require arg1 <= sub_73610f4d - sub_a114dcee
    idx = 0
    s = 0
    t = sub_a114dcee
    while idx < arg1:
        if t < 125:
            if s > -330000000000000001:
                revert with 'NH{q', 17
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 33 * 10^16
            t = t + 1
            continue 
        if t < 250:
            if s > -500000000000000001:
                revert with 'NH{q', 17
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 5 * 10^17
            t = t + 1
            continue 
        if t < 500:
            if s > -750000000000000001:
                revert with 'NH{q', 17
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 75 * 10^16
            t = t + 1
            continue 
        if t < 1000:
            if s > -1000000000000000001:
                revert with 'NH{q', 17
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 10^18
            t = t + 1
            continue 
        if t < 1250:
            if s > -1250000000000000001:
                revert with 'NH{q', 17
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 125 * 10^16
            t = t + 1
            continue 
        if t < 1500:
            if s > -1500000000000000001:
                revert with 'NH{q', 17
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 15 * 10^17
            t = t + 1
            continue 
        if t < 1750:
            if s > -2000000000000000001:
                revert with 'NH{q', 17
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 2 * 10^18
            t = t + 1
            continue 
        if t < 2000:
            if s > -2500000000000000001:
                revert with 'NH{q', 17
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 25 * 10^17
            t = t + 1
            continue 
        if t < 2400:
            if s > -3000000000000000001:
                revert with 'NH{q', 17
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 3 * 10^18
            t = t + 1
            continue 
        if t >= 2497:
            if s > -10000000000000000001:
                revert with 'NH{q', 17
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 10 * 10^18
            t = t + 1
            continue 
        if s > -4000000000000000001:
            revert with 'NH{q', 17
        if t == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 4 * 10^18
        t = t + 1
        continue 
    require msg.value >= s
    call this.address with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1:
        require this.address != msg.sender
        require sub_69c8de8bAddress != msg.sender
        if balanceOf[address(msg.sender)] == -1:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = sub_a114dcee
        mem[32] = 4
        sub_d514de31[stor9] = msg.sender
        mem[mem[64]] = 0
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = sub_a114dcee
        emit Transfer(0, msg.sender, sub_a114dcee);
        if sub_a114dcee == -1:
            revert with 'NH{q', 17
        sub_a114dcee++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if sub_a114dcee < 1:
        revert with 'NH{q', 17
    LATEST_CLAIMED_ID = sub_a114dcee - 1
    call msg.sender with:
       value msg.value - s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
