contract main {




// =====================  Runtime code  =====================


const EXP = 6

const SCALE = 10^6


address owner;
address sub_a1ddc522Address;
mapping of uint256 stor10;
array of uint256 stor11;
array of uint256 stor12;
uint256 minBidIncrement;
uint256 minBid;
uint256 sub_0f515e28;
uint8 paused;
array of uint256 stor2;
array of uint256 sub_aecfab7a;
array of address stor4;
mapping of uint8 stor5;
mapping of uint256 sub_f9faf1b4;
uint256 sub_19c0cff8;
array of address winnerOf;
array of uint256 stor9;

function sub_0f515e28(?) {
    return sub_0f515e28
}

function sub_134a89c0(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor2.length
    return bool(stor('array', ('div', 0.03125, ('param', 'arg1')), ('name', 'stor2', 2))[uint8(arg1)])
}

function sub_19c0cff8(?) {
    return sub_19c0cff8
}

function minBidIncrement() {
    return minBidIncrement
}

function minBid() {
    return minBid
}

function paused() {
    return bool(paused)
}

function winnerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < winnerOf.length
    return winnerOf[arg1]
}

function owner() {
    return owner
}

function sub_a1ddc522(?) {
    return sub_a1ddc522Address
}

function sub_aecfab7a(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_aecfab7a.length
    return sub_aecfab7a[arg1]
}

function sub_f9faf1b4(?) {
    require calldata.size - 4 >= 64
    return sub_f9faf1b4[address(arg1)][arg2]
}

function _fallback() payable {
    revert
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paused = 1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paused = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinBid(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minBid = arg1
}

function setMinBidIncrement(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minBidIncrement = arg1
}

function claimFunds() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_19c0cff8 = 0
    call msg.sender with:
       value sub_19c0cff8 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'NEKO Auction: claim succeeded'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b0d601df(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x304e454b4f204c75636b79204e46543a206d757374206265206265747765656e203020616e6420313030303030302c20696e636c75736976,
                    mem[220 len 8]
    if arg1 > 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x304e454b4f204c75636b79204e46543a206d757374206265206265747765656e203020616e6420313030303030302c20696e636c75736976,
                    mem[220 len 8]
    sub_0f515e28 = arg1
}

function withdraw() {
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6c4e454b4f2041756374696f6e3a2061756374696f6e206d757374206e6f74206265207061757365,
                    mem[204 len 24]
    if stor10[address(msg.sender)] > 0:
        stor10[address(msg.sender)] = 0
        require ext_code.size(sub_a1ddc522Address)
        staticcall sub_a1ddc522Address.0xe8315742 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ext_call.return_data[0]:
            require idx < stor11.length
            mem[0] = 11
            if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]:
                require idx < stor12.length
                mem[0] = 12
                if not stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)]:
                    require idx < stor4.length
                    mem[0] = 4
                    if stor4[idx] != msg.sender:
                        mem[0] = idx
                        mem[32] = sha3(address(msg.sender), 6)
                        sub_f9faf1b4[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
        call msg.sender with:
           value stor10[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'NEKO Auction: withdrawal failed'
        emit Withdrawal(msg.sender, stor10[address(msg.sender)]);
}

function start(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_0f515e28 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x744e454b4f2041756374696f6e3a207072697a652070657263656e74206e6565647320746f206265203e,
                    mem[206 len 22]
    if minBid <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x774e454b4f2041756374696f6e3a206d696e696d756d20626964206e6565647320746f206265203e,
                    mem[204 len 24]
    if minBidIncrement <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x304e454b4f2041756374696f6e3a206d696e696d756d2062696420696e6372656d656e74206e6565647320746f206265203e,
                    mem[214 len 14]
    idx = arg1
    while idx < arg2:
        require idx < stor11.length
        if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x724e454b4f2041756374696f6e3a206d75737420626520756e7374617274656420616e6420756e656e6465,
                        mem[207 len 21]
        require idx < stor12.length
        if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x724e454b4f2041756374696f6e3a206d75737420626520756e7374617274656420616e6420756e656e6465,
                        mem[207 len 21]
        require idx < stor11.length
        mem[0] = 11
        stor11[0.03125 / idx] = 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor11[0.03125 / idx]
        mem[96] = idx
        emit AuctionStarted(idx);
        idx = idx + 1
        continue 
}

function collect(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor12.length
    if not stor('array', ('div', 0.03125, ('param', 'arg1')), ('name', 'stor12', 12))[uint8(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x674e454b4f2041756374696f6e3a2061756374696f6e206d757374206861766520656e6465,
                    mem[201 len 27]
    require arg1 < stor2.length
    if stor('array', ('div', 0.03125, ('param', 'arg1')), ('name', 'stor2', 2))[uint8(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x644e454b4f2041756374696f6e3a206974656d2068617320616c7265616479206265656e20636f6c6c65637465,
                    mem[209 len 19]
    require arg1 < winnerOf.length
    if winnerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x644e454b4f2041756374696f6e3a20796f7520617265206e6f74207468652077696e6e65,
                    mem[200 len 28]
    require arg1 < stor2.length
    stor2[0.03125 / arg1] = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and stor2[0.03125 / arg1]
    require arg1 < stor9.length
    if not stor9[arg1]:
        require arg1 < stor9.length
        if 0 > stor9[arg1]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_a1ddc522Address)
        call sub_a1ddc522Address.0x94bf804d with:
             gas gas_remaining wei
            args arg1, msg.sender
    else:
        require stor9[arg1]
        if stor9[arg1] * sub_0f515e28 / stor9[arg1] != sub_0f515e28:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require arg1 < stor9.length
        if stor9[arg1] * sub_0f515e28 / 10^6 > stor9[arg1]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_a1ddc522Address)
        call sub_a1ddc522Address.0x94bf804d with:
           value stor9[arg1] * sub_0f515e28 / 10^6 wei
             gas gas_remaining wei
            args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function end(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = arg1
    while idx < arg2:
        require idx < stor11.length
        if not stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]:
            revert with 0, 32, 43, 0xfe4e454b4f2041756374696f6e3a206d757374206265207374617274656420616e64206e6f7420656e6465, mem[207 len 21]
        require idx < stor12.length
        if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor12', 12))[uint8(idx)]:
            revert with 0, 32, 43, 0xfe4e454b4f2041756374696f6e3a206d757374206265207374617274656420616e64206e6f7420656e6465, mem[207 len 21]
        require idx < stor12.length
        stor12[0.03125 / idx] = 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor12[0.03125 / idx]
        require idx < stor4.length
        require idx < winnerOf.length
        winnerOf[idx] = stor4[idx]
        require idx < sub_aecfab7a.length
        require idx < stor9.length
        stor9[idx] = sub_aecfab7a[idx]
        require idx < winnerOf.length
        require idx < stor9.length
        emit AuctionEnded(idx, winnerOf[idx], stor9[idx]);
        if not stor9[idx]:
            require idx < stor9.length
            if 0 > stor9[idx]:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_19c0cff8 + stor9[idx] < sub_19c0cff8:
                revert with 0, 'SafeMath: addition overflow'
            sub_19c0cff8 += stor9[idx]
            require idx < winnerOf.length
            mem[0] = 8
            mem[96] = 0xd1e6c5e000000000000000000000000000000000000000000000000000000000
            mem[100] = idx
            mem[132] = winnerOf[idx]
            mem[164] = 0
            require ext_code.size(sub_a1ddc522Address)
            call sub_a1ddc522Address.0xd1e6c5e0 with:
                 gas gas_remaining wei
                args idx, winnerOf[idx], 0
        else:
            require stor9[idx]
            if stor9[idx] * sub_0f515e28 / stor9[idx] != sub_0f515e28:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            require idx < stor9.length
            if stor9[idx] * sub_0f515e28 / 10^6 > stor9[idx]:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_19c0cff8 + stor9[idx] - (stor9[idx] * sub_0f515e28 / 10^6) < sub_19c0cff8:
                revert with 0, 'SafeMath: addition overflow'
            sub_19c0cff8 = sub_19c0cff8 + stor9[idx] - (stor9[idx] * sub_0f515e28 / 10^6)
            require idx < winnerOf.length
            mem[0] = 8
            mem[96] = 0xd1e6c5e000000000000000000000000000000000000000000000000000000000
            mem[100] = idx
            mem[132] = winnerOf[idx]
            mem[164] = stor9[idx] * sub_0f515e28 / 10^6
            require ext_code.size(sub_a1ddc522Address)
            call sub_a1ddc522Address.0xd1e6c5e0 with:
                 gas gas_remaining wei
                args idx, winnerOf[idx], stor9[idx] * sub_0f515e28 / 10^6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_573f9378(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor11.length
    if not stor('array', ('div', 0.03125, ('param', 'arg1')), ('name', 'stor11', 11))[uint8(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x644e454b4f2041756374696f6e3a2061756374696f6e206d75737420626520696e2070726f67726573,
                    mem[205 len 23]
    require arg1 < stor12.length
    if stor('array', ('div', 0.03125, ('param', 'arg1')), ('name', 'stor12', 12))[uint8(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x644e454b4f2041756374696f6e3a2061756374696f6e206d75737420626520696e2070726f67726573,
                    mem[205 len 23]
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6c4e454b4f2041756374696f6e3a2061756374696f6e206d757374206e6f74206265207061757365,
                    mem[204 len 24]
    if msg.value + sub_f9faf1b4[address(msg.sender)][arg1] < minBid:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x644e454b4f2041756374696f6e3a20626964206d75737420626520686967686572207468616e206d696e696d756d206c657665,
                    mem[215 len 13]
    require arg1 < sub_aecfab7a.length
    if msg.value + sub_f9faf1b4[address(msg.sender)][arg1] < sub_aecfab7a[arg1] + minBidIncrement:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x734e454b4f2041756374696f6e3a2062696420696e6372656d656e74206d75737420657863656564206869676865737420627564202b206d696e20696e6372656d656e,
                    mem[231 len 29]
    require arg1 < stor4.length
    if stor4[arg1] == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x654e454b4f2041756374696f6e3a2063616e277420746f7020757020796f7572206f776e2077696e6e696e67206269,
                    mem[211 len 17]
    if stor5[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x304e454b4f2041756374696f6e3a206f74686572206269642069732063757272656e746c792077696e6e696e,
                    mem[208 len 20]
    require arg1 < sub_aecfab7a.length
    if sub_aecfab7a[arg1]:
        require arg1 < sub_aecfab7a.length
        require arg1 < stor4.length
        stor10[stor4[arg1]] += sub_aecfab7a[arg1]
        stor5[stor4[arg1]] = 0
    if sub_f9faf1b4[address(msg.sender)][arg1]:
        stor10[address(msg.sender)] -= sub_f9faf1b4[address(msg.sender)][arg1]
    require arg1 < stor4.length
    stor4[arg1] = msg.sender
    require arg1 < sub_aecfab7a.length
    sub_aecfab7a[arg1] = msg.value + sub_f9faf1b4[address(msg.sender)][arg1]
    sub_f9faf1b4[address(msg.sender)][arg1] += msg.value
    stor5[address(msg.sender)] = 1
    emit HighestBidIncreased(arg1, msg.sender, msg.value + sub_f9faf1b4[address(msg.sender)][arg1]);
}



}
