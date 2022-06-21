contract main {




// =====================  Runtime code  =====================


#
#  - unstake(uint256 arg1)
#  - sub_48bccc49(?)
#  - sub_5ac31717(?)
#  - harvest(uint256 arg1)
#
uint32 stor0;
address owner;
uint256 stor0;
address stor1;
address stor2;
uint256 totalFarmed;
mapping of struct nftInfo;
array of uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor14;
uint256 stor15;
mapping of struct stor16;
mapping of struct stor17;

function sub_0946745f(?) {
    return stor9.length
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_768, userInfo[arg1].field_1024
}

function getTotalFarmed() {
    return totalFarmed
}

function nftInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nftInfo[arg1].field_0, 
           nftInfo[arg1].field_0,
           nftInfo[arg1].field_256,
           nftInfo[arg1].field_512,
           nftInfo[arg1].field_768,
           nftInfo[arg1].field_1024,
           nftInfo[arg1].field_1280
}

function owner() {
    return address(owner)
}

function sub_d5cd1e5c(?) {
    return stor8.length
}

function sub_e8ce6706(?) {
    return stor10.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function retrieveFunds() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    emit Received()
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function getStakedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userInfo[address(arg1)].field_0 > -userInfo[address(arg1)].field_256 - 1:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256 > -userInfo[address(arg1)].field_512 - 1:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512 > test266151307():
        revert with 'NH{q', 65
    if userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512:
        mem[128 len 32 * userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512] = call.data[calldata.size len 32 * userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512]
    idx = 0
    s = 0
    while idx < userInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 6)
        if s >= userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = userInfo[address(arg1)][idx].field_0
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = userInfo[address(arg1)].field_0
    while idx < userInfo[address(arg1)].field_256:
        mem[0] = sha3(address(arg1), 6) + 1
        if s >= userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = userInfo[address(arg1)][idx + 1].field_0
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256
    while idx < userInfo[address(arg1)].field_512:
        mem[0] = sha3(address(arg1), 6) + 2
        if s >= userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = userInfo[address(arg1)][idx + 2].field_0
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512, data=mem[128 len 32 * userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512]), 
}

function withdrawAnyToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_55ffc302(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not nftInfo[arg1].field_160:
        if not nftInfo[arg1].field_0:
            return 0
        if block.timestamp < nftInfo[arg1].field_512:
            revert with 'NH{q', 17
        if block.timestamp - nftInfo[arg1].field_512 and stor11 > -1 / block.timestamp - nftInfo[arg1].field_512:
            revert with 'NH{q', 17
        if not stor14:
            revert with 'NH{q', 18
        if (block.timestamp * stor11) - (nftInfo[arg1].field_512 * stor11) / stor14 < nftInfo[arg1].field_768:
            revert with 'NH{q', 17
        return (((block.timestamp * stor11) - (nftInfo[arg1].field_512 * stor11) / stor14) - nftInfo[arg1].field_768)
    if nftInfo[arg1].field_160 != 1:
        if nftInfo[arg1].field_160 != 2:
            return 0
        if not nftInfo[arg1].field_0:
            return 0
        if block.timestamp < nftInfo[arg1].field_512:
            revert with 'NH{q', 17
        if block.timestamp - nftInfo[arg1].field_512 and stor12 > -1 / block.timestamp - nftInfo[arg1].field_512:
            revert with 'NH{q', 17
        if not stor14:
            revert with 'NH{q', 18
        return ((block.timestamp * stor12) - (nftInfo[arg1].field_512 * stor12) / stor14)
    if not stor15:
        if stor16[stor7[arg1].field_0].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        require stor16[stor7[arg1].field_0].field_0 >= 0
        if stor17[stor7[arg1].field_0].field_0 > stor16[stor7[arg1].field_0].field_128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor16[stor7[arg1].field_0].field_128 < stor17[stor7[arg1].field_0].field_0:
            revert with 'NH{q', 17
        return (stor16[stor7[arg1].field_0].field_128 - stor17[stor7[arg1].field_0].field_0)
    if stor15 and userInfo[address(msg.sender)].field_256 > -1 / stor15:
        revert with 'NH{q', 17
    if not stor15:
        revert with 'NH{q', 18
    if stor15 * userInfo[address(msg.sender)].field_256 / stor15 != userInfo[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    require stor15 * userInfo[address(msg.sender)].field_256 >= 0
    if stor15 * userInfo[address(msg.sender)].field_256 >= 0 and stor16[stor7[arg1].field_0].field_0 > (-1 * stor15 * userInfo[address(msg.sender)].field_256) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if stor15 * userInfo[address(msg.sender)].field_256 < 0 and stor16[stor7[arg1].field_0].field_0 < (-1 * stor15 * userInfo[address(msg.sender)].field_256) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if stor16[stor7[arg1].field_0].field_0 < 0:
        require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[stor7[arg1].field_0].field_0 < stor15 * userInfo[address(msg.sender)].field_256
    else:
        if (stor15 * userInfo[address(msg.sender)].field_256) + stor16[stor7[arg1].field_0].field_0 < stor15 * userInfo[address(msg.sender)].field_256:
            require stor16[stor7[arg1].field_0].field_0 < 0
            require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[stor7[arg1].field_0].field_0 < stor15 * userInfo[address(msg.sender)].field_256
    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[stor7[arg1].field_0].field_0 >= 0
    if stor17[stor7[arg1].field_0].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[stor7[arg1].field_0].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[stor7[arg1].field_0].field_0) >> 128 < stor17[stor7[arg1].field_0].field_0:
        revert with 'NH{q', 17
    return ((Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[stor7[arg1].field_0].field_0) >> 128) - stor17[stor7[arg1].field_0].field_0)
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8.length <= 0:
        staticcall stor1.0x6be9a6f1 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_call.return_data[32] == ext_call.return_data[63 len 1]
        require ext_code.size(stor1)
        call stor1.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not uint8(ext_call.return_data[0]):
            userInfo[address(msg.sender)].field_0++
            userInfo[address(msg.sender)][userInfo[address(msg.sender)].field_0].field_0 = arg1
            stor8.length++
            stor8[stor8.length] = arg1
        else:
            if uint8(ext_call.return_data[0]) != 1:
                if uint8(ext_call.return_data[0]) != 2:
                    revert with 0, 'Token metadata is unreachable'
                userInfo[address(msg.sender)].field_512++
                stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 6))) + userInfo[address(msg.sender)].field_512].field_0 = arg1
                stor10.length++
                stor10[stor10.length] = arg1
            else:
                userInfo[address(msg.sender)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 6))) + userInfo[address(msg.sender)].field_256].field_0 = arg1
                stor9.length++
                stor9[stor9.length] = arg1
                if not stor15:
                    if stor16[address(msg.sender)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    require stor16[address(msg.sender)].field_0 <= stor16[address(msg.sender)].field_0
                else:
                    if stor15 and 1 > -1 / stor15:
                        revert with 'NH{q', 17
                    if not stor15:
                        revert with 'NH{q', 18
                    if stor15 / stor15 != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require stor15 >= 0
                    if stor15 >= 0 and stor16[address(msg.sender)].field_0 < stor15 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if stor15 < 0 and stor16[address(msg.sender)].field_0 > stor15 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if stor15 < 0:
                        require stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0
                    else:
                        if stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0:
                            require stor15 < 0
                            require stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0
                    stor16[address(msg.sender)].field_0 -= stor15
                nftInfo[arg1].field_1024 = 0
                nftInfo[arg1].field_1280 = 0
        nftInfo[arg1].field_0 = msg.sender
        nftInfo[arg1].field_160 = uint8(ext_call.return_data[0])
    else:
        mem[96] = 0xa52b64c500000000000000000000000000000000000000000000000000000000
        call stor1.0xa52b64c5 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        _7 = mem[96]
        require mem[96] == bool(mem[96])
        _9 = mem[128]
        require mem[128] <= test266151307()
        require mem[128] + 127 < return_data.size + 96
        _11 = mem[mem[128] + 96]
        if mem[mem[128] + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[128] + 96]) + 97 > test266151307() or floor32(mem[mem[128] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[128] + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _11
        require _9 + (32 * _11) + 32 <= return_data.size
        idx = _9 + 128
        s = ceil32(return_data.size) + 128
        while idx < _9 + (32 * _11) + 128:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if not _7:
            mem[0] = arg1
            mem[32] = 7
            staticcall stor1.0x6be9a6f1 with:
                    gas gas_remaining wei
                   args arg1
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_105] == mem[_105 + 31 len 1]
            require mem[_105 + 32] == mem[_105 + 63 len 1]
            require ext_code.size(stor1)
            call stor1.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_105 + 31 len 1]:
                userInfo[address(msg.sender)].field_0++
                userInfo[address(msg.sender)][userInfo[address(msg.sender)].field_0].field_0 = arg1
                stor8.length++
                stor8[stor8.length] = arg1
            else:
                if mem[_105 + 31 len 1] != 1:
                    if mem[_105 + 31 len 1] != 2:
                        revert with 0, 'Token metadata is unreachable'
                    userInfo[address(msg.sender)].field_512++
                    stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 6))) + userInfo[address(msg.sender)].field_512].field_0 = arg1
                    stor10.length++
                    stor10[stor10.length] = arg1
                else:
                    userInfo[address(msg.sender)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 6))) + userInfo[address(msg.sender)].field_256].field_0 = arg1
                    stor9.length++
                    stor9[stor9.length] = arg1
                    if not stor15:
                        if stor16[address(msg.sender)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        require stor16[address(msg.sender)].field_0 <= stor16[address(msg.sender)].field_0
                    else:
                        if stor15 and 1 > -1 / stor15:
                            revert with 'NH{q', 17
                        if not stor15:
                            revert with 'NH{q', 18
                        if stor15 / stor15 != 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require stor15 >= 0
                        if stor15 >= 0 and stor16[address(msg.sender)].field_0 < stor15 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if stor15 < 0 and stor16[address(msg.sender)].field_0 > stor15 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor15 < 0:
                            require stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0
                        else:
                            if stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0:
                                require stor15 < 0
                                require stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0
                        stor16[address(msg.sender)].field_0 -= stor15
                    nftInfo[arg1].field_1024 = 0
                    nftInfo[arg1].field_1280 = 0
            nftInfo[arg1].field_0 = msg.sender
            nftInfo[arg1].field_160 = mem[_105 + 31 len 1]
        else:
            idx = 0
            while idx < _11:
                _158 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number)
                mem[mem[64] + 64] = tx.origin
                mem[mem[64] + 84] = block.timestamp
                mem[mem[64] + 116] = idx
                _167 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _169 = sha3(mem[_167 + 32 len mem[_167]])
                if not stor9.length:
                    revert with 'NH{q', 18
                if sha3(mem[_167 + 32 len mem[_167]]) % stor9.length >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = stor9[sha3(mem[_167 + 32 len mem[_167]]) % stor9.length]
                mem[32] = 7
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _173 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[_158 + 148] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[_158 + 152] = this.address
                mem[_158 + 184] = nftInfo[stor9[_169 % stor9.length]].field_0
                mem[_158 + 216] = _173
                require ext_code.size(stor1)
                call stor1.0x42842e0e with:
                     gas gas_remaining wei
                    args address(this.address), nftInfo[stor9[_169 % stor9.length]].field_0, _173
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[0] = arg1
            mem[32] = 7
            staticcall stor1.0x6be9a6f1 with:
                    gas gas_remaining wei
                   args arg1
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _163 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_163] == mem[_163 + 31 len 1]
            require mem[_163 + 32] == mem[_163 + 63 len 1]
            require ext_code.size(stor1)
            call stor1.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_163 + 31 len 1]:
                userInfo[address(msg.sender)].field_0++
                userInfo[address(msg.sender)][userInfo[address(msg.sender)].field_0].field_0 = arg1
                stor8.length++
                stor8[stor8.length] = arg1
            else:
                if mem[_163 + 31 len 1] != 1:
                    if mem[_163 + 31 len 1] != 2:
                        revert with 0, 'Token metadata is unreachable'
                    userInfo[address(msg.sender)].field_512++
                    stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 6))) + userInfo[address(msg.sender)].field_512].field_0 = arg1
                    stor10.length++
                    stor10[stor10.length] = arg1
                else:
                    userInfo[address(msg.sender)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 6))) + userInfo[address(msg.sender)].field_256].field_0 = arg1
                    stor9.length++
                    stor9[stor9.length] = arg1
                    if not stor15:
                        if stor16[address(msg.sender)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        require stor16[address(msg.sender)].field_0 <= stor16[address(msg.sender)].field_0
                    else:
                        if stor15 and 1 > -1 / stor15:
                            revert with 'NH{q', 17
                        if not stor15:
                            revert with 'NH{q', 18
                        if stor15 / stor15 != 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require stor15 >= 0
                        if stor15 >= 0 and stor16[address(msg.sender)].field_0 < stor15 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if stor15 < 0 and stor16[address(msg.sender)].field_0 > stor15 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor15 < 0:
                            require stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0
                        else:
                            if stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0:
                                require stor15 < 0
                                require stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0
                        stor16[address(msg.sender)].field_0 -= stor15
                    nftInfo[arg1].field_1024 = 0
                    nftInfo[arg1].field_1280 = 0
            nftInfo[arg1].field_0 = msg.sender
            nftInfo[arg1].field_160 = mem[_163 + 31 len 1]
    nftInfo[arg1].field_256 = block.timestamp
    nftInfo[arg1].field_512 = block.timestamp
}

function pendingReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userInfo[address(arg1)].field_0 <= 0:
        if userInfo[address(arg1)].field_256 <= 0:
            if userInfo[address(arg1)].field_512 <= 0:
                return 0
            idx = 0
            s = 0
            while idx < userInfo[address(arg1)].field_512:
                mem[0] = userInfo[address(arg1)][idx + 2].field_0
                mem[32] = 7
                if not nftInfo[stor6[address(arg1)][idx + 2].field_0].field_0:
                    if s > -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if block.timestamp < nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                    revert with 'NH{q', 17
                if block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                    revert with 'NH{q', 17
                if not stor14:
                    revert with 'NH{q', 18
                if s > -((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + ((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14)
                continue 
        else:
            if not stor15:
                if stor16[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                require stor16[address(arg1)].field_0 >= 0
                if stor17[address(arg1)].field_0 > stor16[address(arg1)].field_128:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor16[address(arg1)].field_128 < stor17[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if 0 > -stor16[address(arg1)].field_128 + stor17[address(arg1)].field_0 - 1:
                    revert with 'NH{q', 17
                if userInfo[address(arg1)].field_512 <= 0:
                    return (stor16[address(arg1)].field_128 - stor17[address(arg1)].field_0)
                idx = 0
                s = stor16[address(arg1)].field_128 - stor17[address(arg1)].field_0
                while idx < userInfo[address(arg1)].field_512:
                    mem[0] = userInfo[address(arg1)][idx + 2].field_0
                    mem[32] = 7
                    if not nftInfo[stor6[address(arg1)][idx + 2].field_0].field_0:
                        if s > -1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if block.timestamp < nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                        revert with 'NH{q', 17
                    if not stor14:
                        revert with 'NH{q', 18
                    if s > -((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14) - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + ((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14)
                    continue 
            else:
                if stor15 and userInfo[address(msg.sender)].field_256 > -1 / stor15:
                    revert with 'NH{q', 17
                if not stor15:
                    revert with 'NH{q', 18
                if stor15 * userInfo[address(msg.sender)].field_256 / stor15 != userInfo[address(msg.sender)].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                require stor15 * userInfo[address(msg.sender)].field_256 >= 0
                if stor15 * userInfo[address(msg.sender)].field_256 >= 0 and stor16[address(arg1)].field_0 > (-1 * stor15 * userInfo[address(msg.sender)].field_256) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if stor15 * userInfo[address(msg.sender)].field_256 < 0 and stor16[address(arg1)].field_0 < (-1 * stor15 * userInfo[address(msg.sender)].field_256) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if stor16[address(arg1)].field_0 < 0:
                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                else:
                    if (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0 < stor15 * userInfo[address(msg.sender)].field_256:
                        require stor16[address(arg1)].field_0 < 0
                        require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0 >= 0
                if stor17[address(arg1)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0) >> 128:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0) >> 128 < stor17[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if 0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0) >> 128) + stor17[address(arg1)].field_0 - 1:
                    revert with 'NH{q', 17
                if userInfo[address(arg1)].field_512 <= 0:
                    return ((Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0) >> 128) - stor17[address(arg1)].field_0)
                idx = 0
                s = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0) >> 128) - stor17[address(arg1)].field_0
                while idx < userInfo[address(arg1)].field_512:
                    mem[0] = userInfo[address(arg1)][idx + 2].field_0
                    mem[32] = 7
                    if not nftInfo[stor6[address(arg1)][idx + 2].field_0].field_0:
                        if s > -1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if block.timestamp < nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                        revert with 'NH{q', 17
                    if not stor14:
                        revert with 'NH{q', 18
                    if s > -((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14) - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + ((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14)
                    continue 
        return s
    idx = 0
    s = 0
    while idx < userInfo[address(arg1)].field_0:
        mem[0] = userInfo[address(arg1)][idx].field_0
        mem[32] = 7
        if not nftInfo[stor6[address(arg1)][idx].field_0].field_0:
            if s > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if block.timestamp < nftInfo[stor6[address(arg1)][idx].field_0].field_512:
            revert with 'NH{q', 17
        if block.timestamp - nftInfo[stor6[address(arg1)][idx].field_0].field_512 and stor11 > -1 / block.timestamp - nftInfo[stor6[address(arg1)][idx].field_0].field_512:
            revert with 'NH{q', 17
        if not stor14:
            revert with 'NH{q', 18
        if (block.timestamp * stor11) - (nftInfo[stor6[address(arg1)][idx].field_0].field_512 * stor11) / stor14 < nftInfo[stor6[address(arg1)][idx].field_0].field_768:
            revert with 'NH{q', 17
        if s > -((block.timestamp * stor11) - (nftInfo[stor6[address(arg1)][idx].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(arg1)][idx].field_0].field_768 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + ((block.timestamp * stor11) - (nftInfo[stor6[address(arg1)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(arg1)][idx].field_0].field_768
        continue 
    if userInfo[address(arg1)].field_256 <= 0:
        if userInfo[address(arg1)].field_512 <= 0:
            return s
        idx = 0
        t = s
        while idx < userInfo[address(arg1)].field_512:
            mem[0] = userInfo[address(arg1)][idx + 2].field_0
            mem[32] = 7
            if not nftInfo[stor6[address(arg1)][idx + 2].field_0].field_0:
                if t > -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t
                continue 
            if block.timestamp < nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                revert with 'NH{q', 17
            if block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                revert with 'NH{q', 17
            if not stor14:
                revert with 'NH{q', 18
            if t > -((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + ((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14)
            continue 
    else:
        if not stor15:
            if stor16[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            require stor16[address(arg1)].field_0 >= 0
            if stor17[address(arg1)].field_0 > stor16[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor16[address(arg1)].field_128 < stor17[address(arg1)].field_0:
                revert with 'NH{q', 17
            if s > -stor16[address(arg1)].field_128 + stor17[address(arg1)].field_0 - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_512 <= 0:
                return (s + stor16[address(arg1)].field_128 - stor17[address(arg1)].field_0)
            idx = 0
            t = s + stor16[address(arg1)].field_128 - stor17[address(arg1)].field_0
            while idx < userInfo[address(arg1)].field_512:
                mem[0] = userInfo[address(arg1)][idx + 2].field_0
                mem[32] = 7
                if not nftInfo[stor6[address(arg1)][idx + 2].field_0].field_0:
                    if t > -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    t = t
                    continue 
                if block.timestamp < nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                    revert with 'NH{q', 17
                if block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                    revert with 'NH{q', 17
                if not stor14:
                    revert with 'NH{q', 18
                if t > -((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t + ((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14)
                continue 
        else:
            if stor15 and userInfo[address(msg.sender)].field_256 > -1 / stor15:
                revert with 'NH{q', 17
            if not stor15:
                revert with 'NH{q', 18
            if stor15 * userInfo[address(msg.sender)].field_256 / stor15 != userInfo[address(msg.sender)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require stor15 * userInfo[address(msg.sender)].field_256 >= 0
            if stor15 * userInfo[address(msg.sender)].field_256 >= 0 and stor16[address(arg1)].field_0 > (-1 * stor15 * userInfo[address(msg.sender)].field_256) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if stor15 * userInfo[address(msg.sender)].field_256 < 0 and stor16[address(arg1)].field_0 < (-1 * stor15 * userInfo[address(msg.sender)].field_256) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if stor16[address(arg1)].field_0 < 0:
                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
            else:
                if (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0 < stor15 * userInfo[address(msg.sender)].field_256:
                    require stor16[address(arg1)].field_0 < 0
                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
            require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0 >= 0
            if stor17[address(arg1)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0) >> 128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0) >> 128 < stor17[address(arg1)].field_0:
                revert with 'NH{q', 17
            if s > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0) >> 128) + stor17[address(arg1)].field_0 - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_512 <= 0:
                return (s + (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0) >> 128) - stor17[address(arg1)].field_0)
            idx = 0
            t = s + (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(arg1)].field_0) >> 128) - stor17[address(arg1)].field_0
            while idx < userInfo[address(arg1)].field_512:
                mem[0] = userInfo[address(arg1)][idx + 2].field_0
                mem[32] = 7
                if not nftInfo[stor6[address(arg1)][idx + 2].field_0].field_0:
                    if t > -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    t = t
                    continue 
                if block.timestamp < nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                    revert with 'NH{q', 17
                if block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                    revert with 'NH{q', 17
                if not stor14:
                    revert with 'NH{q', 18
                if t > -((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t + ((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14)
                continue 
    return t
}

function sub_a9c69553(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor8.length <= 0:
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 7
            staticcall stor1.0x6be9a6f1 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _106 = mem[_102]
            require mem[_102] == mem[_102 + 31 len 1]
            require mem[_102 + 32] == mem[_102 + 63 len 1]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor1)
            call stor1.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not uint8(_106):
                userInfo[address(msg.sender)].field_0++
                userInfo[address(msg.sender)][userInfo[address(msg.sender)].field_0].field_0 = cd[((32 * idx) + cd[4] + 36)]
                stor8.length++
                mem[0] = 8
                stor8[stor8.length] = cd[((32 * idx) + cd[4] + 36)]
            else:
                if uint8(_106) != 1:
                    if uint8(_106) != 2:
                        revert with 0, 'Token metadata is unreachable'
                    userInfo[address(msg.sender)].field_512++
                    stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 6))) + userInfo[address(msg.sender)].field_512].field_0 = cd[((32 * idx) + cd[4] + 36)]
                    stor10.length++
                    mem[0] = 10
                    stor10[stor10.length] = cd[((32 * idx) + cd[4] + 36)]
                else:
                    userInfo[address(msg.sender)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 6))) + userInfo[address(msg.sender)].field_256].field_0 = cd[((32 * idx) + cd[4] + 36)]
                    stor9.length++
                    stor9[stor9.length] = cd[((32 * idx) + cd[4] + 36)]
                    if not stor15:
                        if stor16[address(msg.sender)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        require stor16[address(msg.sender)].field_0 <= stor16[address(msg.sender)].field_0
                        mem[0] = msg.sender
                        mem[32] = 16
                    else:
                        if stor15 and 1 > -1 / stor15:
                            revert with 'NH{q', 17
                        if not stor15:
                            revert with 'NH{q', 18
                        if stor15 / stor15 != 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require stor15 >= 0
                        if stor15 >= 0 and stor16[address(msg.sender)].field_0 < stor15 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if stor15 < 0 and stor16[address(msg.sender)].field_0 > stor15 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor15 < 0:
                            require stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0
                        else:
                            if stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0:
                                require stor15 < 0
                                require stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0
                        mem[0] = msg.sender
                        mem[32] = 16
                        stor16[address(msg.sender)].field_0 -= stor15
                    nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = 0
                    nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = 0
            nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = msg.sender
            nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_160 = uint8(_106)
            nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = block.timestamp
            nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[96] = 0xa52b64c500000000000000000000000000000000000000000000000000000000
        call stor1.0xa52b64c5 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        _4 = mem[96]
        require mem[96] == bool(mem[96])
        _8 = mem[128]
        require mem[128] <= test266151307()
        require mem[128] + 127 < return_data.size + 96
        _10 = mem[mem[128] + 96]
        if mem[mem[128] + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[128] + 96]) + 97 > test266151307() or floor32(mem[mem[128] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[128] + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _10
        require _8 + (32 * _10) + 32 <= return_data.size
        idx = _8 + 128
        s = ceil32(return_data.size) + 128
        while idx < _8 + (32 * _10) + 128:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if not _4:
            idx = 0
            while idx < ('cd', 4).length:
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 7
                staticcall stor1.0x6be9a6f1 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _192 = mem[_191]
                require mem[_191] == mem[_191 + 31 len 1]
                require mem[_191 + 32] == mem[_191 + 63 len 1]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor1)
                call stor1.0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not uint8(_192):
                    userInfo[address(msg.sender)].field_0++
                    userInfo[address(msg.sender)][userInfo[address(msg.sender)].field_0].field_0 = cd[((32 * idx) + cd[4] + 36)]
                    stor8.length++
                    mem[0] = 8
                    stor8[stor8.length] = cd[((32 * idx) + cd[4] + 36)]
                else:
                    if uint8(_192) != 1:
                        if uint8(_192) != 2:
                            revert with 0, 'Token metadata is unreachable'
                        userInfo[address(msg.sender)].field_512++
                        stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 6))) + userInfo[address(msg.sender)].field_512].field_0 = cd[((32 * idx) + cd[4] + 36)]
                        stor10.length++
                        mem[0] = 10
                        stor10[stor10.length] = cd[((32 * idx) + cd[4] + 36)]
                    else:
                        userInfo[address(msg.sender)].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 6))) + userInfo[address(msg.sender)].field_256].field_0 = cd[((32 * idx) + cd[4] + 36)]
                        stor9.length++
                        stor9[stor9.length] = cd[((32 * idx) + cd[4] + 36)]
                        if not stor15:
                            if stor16[address(msg.sender)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            require stor16[address(msg.sender)].field_0 <= stor16[address(msg.sender)].field_0
                            mem[0] = msg.sender
                            mem[32] = 16
                        else:
                            if stor15 and 1 > -1 / stor15:
                                revert with 'NH{q', 17
                            if not stor15:
                                revert with 'NH{q', 18
                            if stor15 / stor15 != 1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require stor15 >= 0
                            if stor15 >= 0 and stor16[address(msg.sender)].field_0 < stor15 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if stor15 < 0 and stor16[address(msg.sender)].field_0 > stor15 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor15 < 0:
                                require stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0
                            else:
                                if stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0:
                                    require stor15 < 0
                                    require stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0
                            mem[0] = msg.sender
                            mem[32] = 16
                            stor16[address(msg.sender)].field_0 -= stor15
                        nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = 0
                        nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = 0
                nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = msg.sender
                nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_160 = uint8(_192)
                nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = block.timestamp
                nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < _10:
                _183 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number)
                mem[mem[64] + 64] = tx.origin
                mem[mem[64] + 84] = block.timestamp
                mem[mem[64] + 116] = idx
                _199 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _201 = sha3(mem[_199 + 32 len mem[_199]])
                if not stor9.length:
                    revert with 'NH{q', 18
                if sha3(mem[_199 + 32 len mem[_199]]) % stor9.length >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = stor9[sha3(mem[_199 + 32 len mem[_199]]) % stor9.length]
                mem[32] = 7
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _206 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[_183 + 148] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[_183 + 152] = this.address
                mem[_183 + 184] = nftInfo[stor9[_201 % stor9.length]].field_0
                mem[_183 + 216] = _206
                require ext_code.size(stor1)
                call stor1.0x42842e0e with:
                     gas gas_remaining wei
                    args address(this.address), nftInfo[stor9[_201 % stor9.length]].field_0, _206
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            s = 0
            while _10 < ('cd', 4).length:
                mem[0] = cd[((32 * _10) + cd[4] + 36)]
                mem[32] = 7
                staticcall stor1.0x6be9a6f1 with:
                        gas gas_remaining wei
                       args cd[((32 * _10) + cd[4] + 36)]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _247 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _248 = mem[_247]
                require mem[_247] == mem[_247 + 31 len 1]
                require mem[_247 + 32] == mem[_247 + 63 len 1]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = cd[((32 * _10) + cd[4] + 36)]
                require ext_code.size(stor1)
                call stor1.0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), cd[((32 * _10) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not uint8(_248):
                    userInfo[address(msg.sender)].field_0++
                    userInfo[address(msg.sender)][userInfo[address(msg.sender)].field_0].field_0 = cd[((32 * _10) + cd[4] + 36)]
                    stor8.length++
                    mem[0] = 8
                    stor8[stor8.length] = cd[((32 * _10) + cd[4] + 36)]
                else:
                    if uint8(_248) != 1:
                        if uint8(_248) != 2:
                            revert with 0, 'Token metadata is unreachable'
                        userInfo[address(msg.sender)].field_512++
                        stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 6))) + userInfo[address(msg.sender)].field_512].field_0 = cd[((32 * _10) + cd[4] + 36)]
                        stor10.length++
                        mem[0] = 10
                        stor10[stor10.length] = cd[((32 * _10) + cd[4] + 36)]
                    else:
                        userInfo[address(msg.sender)].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 6))) + userInfo[address(msg.sender)].field_256].field_0 = cd[((32 * _10) + cd[4] + 36)]
                        stor9.length++
                        stor9[stor9.length] = cd[((32 * _10) + cd[4] + 36)]
                        if not stor15:
                            if stor16[address(msg.sender)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            require stor16[address(msg.sender)].field_0 <= stor16[address(msg.sender)].field_0
                            mem[0] = msg.sender
                            mem[32] = 16
                        else:
                            if stor15 and 1 > -1 / stor15:
                                revert with 'NH{q', 17
                            if not stor15:
                                revert with 'NH{q', 18
                            if stor15 / stor15 != 1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require stor15 >= 0
                            if stor15 >= 0 and stor16[address(msg.sender)].field_0 < stor15 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if stor15 < 0 and stor16[address(msg.sender)].field_0 > stor15 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor15 < 0:
                                require stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0
                            else:
                                if stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0:
                                    require stor15 < 0
                                    require stor16[address(msg.sender)].field_0 - stor15 > stor16[address(msg.sender)].field_0
                            mem[0] = msg.sender
                            mem[32] = 16
                            stor16[address(msg.sender)].field_0 -= stor15
                        nftInfo[cd[((32 * _10) + cd[4] + 36)]].field_1024 = 0
                        nftInfo[cd[((32 * _10) + cd[4] + 36)]].field_1280 = 0
                nftInfo[cd[((32 * _10) + cd[4] + 36)]].field_0 = msg.sender
                nftInfo[cd[((32 * _10) + cd[4] + 36)]].field_160 = uint8(_248)
                nftInfo[cd[((32 * _10) + cd[4] + 36)]].field_256 = block.timestamp
                nftInfo[cd[((32 * _10) + cd[4] + 36)]].field_512 = block.timestamp
                if _10 == -1:
                    revert with 'NH{q', 17
                s = _10 + 1
                continue 
}

function harvestAll() payable {
    mem[64] = 96
    require not msg.value
    if stor8.length <= 0:
        mem[0] = msg.sender
        mem[32] = 6
        idx = 0
        while idx < userInfo[address(msg.sender)].field_0:
            mem[0] = userInfo[address(msg.sender)][idx].field_0
            mem[32] = 7
            if nftInfo[stor6[address(msg.sender)][idx].field_0].field_0 != msg.sender:
                revert with 0, 'Caller is not token staker'
            if not nftInfo[stor6[address(msg.sender)][idx].field_0].field_160:
                if block.timestamp < nftInfo[stor6[address(msg.sender)][idx].field_0].field_512:
                    revert with 'NH{q', 17
                if block.timestamp - nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 and stor11 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx].field_0].field_512:
                    revert with 'NH{q', 17
                if not stor14:
                    revert with 'NH{q', 18
                if (block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14 < nftInfo[stor6[address(msg.sender)][idx].field_0].field_768:
                    revert with 'NH{q', 17
                if stor9.length <= 0:
                    nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                    nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                    if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 > 0:
                        if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - 1:
                            revert with 'NH{q', 17
                        totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768
                        _4963 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768
                        _5001 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5001 + 32] = mem[_5001 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[64] = _4963 + 164
                        mem[_4963 + 100] = 32
                        mem[_4963 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(stor2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _5079 = mem[_5001]
                        s = 0
                        while s < _5079:
                            mem[_4963 + s + 164] = mem[_5001 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5079) > _5079:
                            mem[_4963 + _5079 + 164] = 0
                        call stor2.mem[_4963 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_4963 + 168 len _5079 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_4963 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_4963 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_4963 + idx + 232] = mem[_4963 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_4963 + 232]
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _4963 + ceil32(return_data.size) + 165
                            mem[_4963 + 164] = return_data.size
                            mem[_4963 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_4963 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_4963 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_4963 + ceil32(return_data.size) + idx + 233] = mem[_4963 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_4963 + ceil32(return_data.size) + 233]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_4963 + 196] == bool(mem[_4963 + 196])
                                if not mem[_4963 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 and 2 > -1 / ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768:
                        revert with 'NH{q', 17
                    if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 < 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10:
                        revert with 'NH{q', 17
                    require stor9.length > 0
                    if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10:
                        if not stor9.length:
                            revert with 'NH{q', 18
                        if stor15 > -(0 / stor9.length) - 1:
                            revert with 'NH{q', 17
                        if stor15 + (0 / stor9.length) < stor15:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15 += 0 / stor9.length
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10) > 0:
                            if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10) - 1:
                                revert with 'NH{q', 17
                            totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10)
                            _5675 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10)
                            _6257 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_6257 + 32] = mem[_6257 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _5675 + 164
                            mem[_5675 + 100] = 32
                            mem[_5675 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _6621 = mem[_6257]
                            s = 0
                            while s < _6621:
                                mem[_5675 + s + 164] = mem[_6257 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_6621) > _6621:
                                mem[_5675 + _6621 + 164] = 0
                            call stor2.mem[_5675 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_5675 + 168 len _6621 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_5675 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5675 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_5675 + idx + 232] = mem[_5675 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5675 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _5675 + ceil32(return_data.size) + 165
                                mem[_5675 + 164] = return_data.size
                                mem[_5675 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5675 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5675 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_5675 + ceil32(return_data.size) + idx + 233] = mem[_5675 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5675 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_5675 + 196] == bool(mem[_5675 + 196])
                                    if not mem[_5675 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 and 0x100000000000000000000000000000000 > -1 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10:
                            revert with 'NH{q', 17
                        if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10:
                            revert with 'NH{q', 18
                        if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 << 128 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 != 0x100000000000000000000000000000000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not stor9.length:
                            revert with 'NH{q', 18
                        if stor15 > -(2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 << 128 / stor9.length) - 1:
                            revert with 'NH{q', 17
                        if stor15 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 << 128 / stor9.length) < stor15:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15 += 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 << 128 / stor9.length
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10) > 0:
                            if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10) - 1:
                                revert with 'NH{q', 17
                            totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10)
                            _6366 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10)
                            _6769 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_6769 + 32] = mem[_6769 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _6366 + 164
                            mem[_6366 + 100] = 32
                            mem[_6366 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _7110 = mem[_6769]
                            s = 0
                            while s < _7110:
                                mem[_6366 + s + 164] = mem[_6769 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_7110) <= _7110:
                                call stor2.mem[_6366 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_6366 + 168 len _7110 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_6366 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_6366 + 168] = 32
                                        s = 0
                                        while s < 32:
                                            mem[_6366 + s + 232] = mem[_6366 + s + 132]
                                            s = s + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_6366 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _6366 + ceil32(return_data.size) + 165
                                    mem[_6366 + 164] = return_data.size
                                    mem[_6366 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6366 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_6366 + ceil32(return_data.size) + 169] = 32
                                        s = 0
                                        while s < 32:
                                            mem[_6366 + ceil32(return_data.size) + s + 233] = mem[_6366 + s + 132]
                                            s = s + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_6366 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_6366 + 196] == bool(mem[_6366 + 196])
                                        if not mem[_6366 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_6366 + _7110 + 164] = 0
                                call stor2.mem[_6366 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_6366 + 168 len _7110 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_6366 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_6366 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_6366 + idx + 232] = mem[_6366 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_6366 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _6366 + ceil32(return_data.size) + 165
                                    mem[_6366 + 164] = return_data.size
                                    mem[_6366 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6366 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_6366 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_6366 + ceil32(return_data.size) + idx + 233] = mem[_6366 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_6366 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_6366 + 196] == bool(mem[_6366 + 196])
                                        if not mem[_6366 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if nftInfo[stor6[address(msg.sender)][idx].field_0].field_160 != 1:
                    if nftInfo[stor6[address(msg.sender)][idx].field_0].field_160 != 2:
                        revert with 0, 'Token metadata is unreachable'
                    if block.timestamp < nftInfo[stor6[address(msg.sender)][idx].field_0].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx].field_0].field_512:
                        revert with 'NH{q', 17
                    if not stor14:
                        revert with 'NH{q', 18
                    nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                    nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                    if (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor12) / stor14 > 0:
                        if totalFarmed > -((block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor12) / stor14) - 1:
                            revert with 'NH{q', 17
                        totalFarmed += (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor12) / stor14
                        _4953 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor12) / stor14
                        _4980 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_4980 + 32] = mem[_4980 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[64] = _4953 + 164
                        mem[_4953 + 100] = 32
                        mem[_4953 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(stor2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _5035 = mem[_4980]
                        s = 0
                        while s < _5035:
                            mem[_4953 + s + 164] = mem[_4980 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5035) > _5035:
                            mem[_4953 + _5035 + 164] = 0
                        call stor2.mem[_4953 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_4953 + 168 len _5035 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_4953 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_4953 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_4953 + idx + 232] = mem[_4953 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_4953 + 232]
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _4953 + ceil32(return_data.size) + 165
                            mem[_4953 + 164] = return_data.size
                            mem[_4953 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_4953 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_4953 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_4953 + ceil32(return_data.size) + idx + 233] = mem[_4953 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_4953 + ceil32(return_data.size) + 233]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_4953 + 196] == bool(mem[_4953 + 196])
                                if not mem[_4953 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require userInfo[address(msg.sender)].field_256 > 0
                    mem[0] = msg.sender
                    mem[32] = 6
                    if not stor15:
                        if stor16[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        require stor16[address(msg.sender)].field_0 >= 0
                        _4970 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4970] = 30
                        mem[_4970 + 32] = 'SafeMath: subtraction overflow'
                        if stor17[address(msg.sender)].field_0 > stor16[address(msg.sender)].field_128:
                            _4974 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4974 + idx + 68] = mem[_4970 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4974 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4974 + -mem[64] + 100
                        if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                            revert with 'NH{q', 17
                        if stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0 > 0:
                            if stor17[address(msg.sender)].field_0 > -stor16[address(msg.sender)].field_128 + stor17[address(msg.sender)].field_0 - 1:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 17
                            stor17[address(msg.sender)].field_0 = stor16[address(msg.sender)].field_128
                            _5249 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0
                            _5635 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5635 + 32] = mem[_5635 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _5249 + 164
                            mem[_5249 + 100] = 32
                            mem[_5249 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _6143 = mem[_5635]
                            s = 0
                            while s < _6143:
                                mem[_5249 + s + 164] = mem[_5635 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_6143) > _6143:
                                mem[_5249 + _6143 + 164] = 0
                            call stor2.mem[_5249 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_5249 + 168 len _6143 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_5249 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5249 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_5249 + idx + 232] = mem[_5249 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5249 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _5249 + ceil32(return_data.size) + 165
                                mem[_5249 + 164] = return_data.size
                                mem[_5249 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5249 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5249 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_5249 + ceil32(return_data.size) + idx + 233] = mem[_5249 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5249 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_5249 + 196] == bool(mem[_5249 + 196])
                                    if not mem[_5249 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if stor15 and userInfo[address(msg.sender)].field_256 > -1 / stor15:
                            revert with 'NH{q', 17
                        if not stor15:
                            revert with 'NH{q', 18
                        if stor15 * userInfo[address(msg.sender)].field_256 / stor15 != userInfo[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require stor15 * userInfo[address(msg.sender)].field_256 >= 0
                        if stor15 * userInfo[address(msg.sender)].field_256 >= 0 and stor16[address(msg.sender)].field_0 > (-1 * stor15 * userInfo[address(msg.sender)].field_256) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor15 * userInfo[address(msg.sender)].field_256 < 0 and stor16[address(msg.sender)].field_0 < (-1 * stor15 * userInfo[address(msg.sender)].field_256) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if stor16[address(msg.sender)].field_0 < 0:
                            require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                            require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                            _5055 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5055] = 30
                            mem[_5055 + 32] = 'SafeMath: subtraction overflow'
                            if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                _5078 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_5078 + idx + 68] = mem[_5055 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5078 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5078 + -mem[64] + 100
                            if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                    revert with 'NH{q', 17
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = msg.sender
                                mem[32] = 17
                                stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                stor17[address(msg.sender)].field_128 = 0
                                _5873 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                _6399 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6399 + 32] = mem[_6399 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _5873 + 164
                                mem[_5873 + 100] = 32
                                mem[_5873 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _6739 = mem[_6399]
                                s = 0
                                while s < _6739:
                                    mem[_5873 + s + 164] = mem[_6399 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_6739) > _6739:
                                    mem[_5873 + _6739 + 164] = 0
                                call stor2.mem[_5873 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_5873 + 168 len _6739 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_5873 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_5873 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_5873 + idx + 232] = mem[_5873 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_5873 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _5873 + ceil32(return_data.size) + 165
                                    mem[_5873 + 164] = return_data.size
                                    mem[_5873 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5873 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_5873 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_5873 + ceil32(return_data.size) + idx + 233] = mem[_5873 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_5873 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_5873 + 196] == bool(mem[_5873 + 196])
                                        if not mem[_5873 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= stor15 * userInfo[address(msg.sender)].field_256:
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                _5036 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5036] = 30
                                mem[_5036 + 32] = 'SafeMath: subtraction overflow'
                                if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                    _5056 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_5056 + idx + 68] = mem[_5036 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5056 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _5056 + -mem[64] + 100
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                    if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                        revert with 'NH{q', 17
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 17
                                    stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                    stor17[address(msg.sender)].field_128 = 0
                                    _5769 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                    _6327 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_6327 + 32] = mem[_6327 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _5769 + 164
                                    mem[_5769 + 100] = 32
                                    mem[_5769 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(stor2) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _6670 = mem[_6327]
                                    s = 0
                                    while s < _6670:
                                        mem[_5769 + s + 164] = mem[_6327 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_6670) > _6670:
                                        mem[_5769 + _6670 + 164] = 0
                                    call stor2.mem[_5769 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_5769 + 168 len _6670 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_5769 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5769 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_5769 + idx + 232] = mem[_5769 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5769 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _5769 + ceil32(return_data.size) + 165
                                        mem[_5769 + 164] = return_data.size
                                        mem[_5769 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_5769 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5769 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_5769 + ceil32(return_data.size) + idx + 233] = mem[_5769 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5769 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_5769 + 196] == bool(mem[_5769 + 196])
                                            if not mem[_5769 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                require stor16[address(msg.sender)].field_0 < 0
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                _5065 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5065] = 30
                                mem[_5065 + 32] = 'SafeMath: subtraction overflow'
                                if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                    _5094 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_5094 + idx + 68] = mem[_5065 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5094 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _5094 + -mem[64] + 100
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                    if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                        revert with 'NH{q', 17
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 17
                                    stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                    stor17[address(msg.sender)].field_128 = 0
                                    _5934 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                    _6442 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_6442 + 32] = mem[_6442 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _5934 + 164
                                    mem[_5934 + 100] = 32
                                    mem[_5934 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(stor2) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _6764 = mem[_6442]
                                    s = 0
                                    while s < _6764:
                                        mem[_5934 + s + 164] = mem[_6442 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_6764) > _6764:
                                        mem[_5934 + _6764 + 164] = 0
                                    call stor2.mem[_5934 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_5934 + 168 len _6764 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_5934 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5934 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_5934 + idx + 232] = mem[_5934 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5934 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _5934 + ceil32(return_data.size) + 165
                                        mem[_5934 + 164] = return_data.size
                                        mem[_5934 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_5934 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5934 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_5934 + ceil32(return_data.size) + idx + 233] = mem[_5934 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5934 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_5934 + 196] == bool(mem[_5934 + 196])
                                            if not mem[_5934 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                    nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < userInfo[address(msg.sender)].field_256:
            mem[0] = userInfo[address(msg.sender)][idx + 1].field_0
            mem[32] = 7
            if nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_0 != msg.sender:
                revert with 0, 'Caller is not token staker'
            if not nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_160:
                if block.timestamp < nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512:
                    revert with 'NH{q', 17
                if block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 and stor11 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512:
                    revert with 'NH{q', 17
                if not stor14:
                    revert with 'NH{q', 18
                if (block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14 < nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768:
                    revert with 'NH{q', 17
                if stor9.length <= 0:
                    nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                    nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                    if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 > 0:
                        if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - 1:
                            revert with 'NH{q', 17
                        totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768
                        _10467 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768
                        _10510 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_10510 + 32] = mem[_10510 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[64] = _10467 + 164
                        mem[_10467 + 100] = 32
                        mem[_10467 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(stor2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _10616 = mem[_10510]
                        s = 0
                        while s < _10616:
                            mem[_10467 + s + 164] = mem[_10510 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_10616) > _10616:
                            mem[_10467 + _10616 + 164] = 0
                        call stor2.mem[_10467 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_10467 + 168 len _10616 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_10467 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_10467 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_10467 + idx + 232] = mem[_10467 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_10467 + 232]
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _10467 + ceil32(return_data.size) + 165
                            mem[_10467 + 164] = return_data.size
                            mem[_10467 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_10467 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_10467 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_10467 + ceil32(return_data.size) + idx + 233] = mem[_10467 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_10467 + ceil32(return_data.size) + 233]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_10467 + 196] == bool(mem[_10467 + 196])
                                if not mem[_10467 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 and 2 > -1 / ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768:
                        revert with 'NH{q', 17
                    if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 < 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10:
                        revert with 'NH{q', 17
                    require stor9.length > 0
                    if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10:
                        if not stor9.length:
                            revert with 'NH{q', 18
                        if stor15 > -(0 / stor9.length) - 1:
                            revert with 'NH{q', 17
                        if stor15 + (0 / stor9.length) < stor15:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15 += 0 / stor9.length
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10) > 0:
                            if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10) - 1:
                                revert with 'NH{q', 17
                            totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10)
                            _11346 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10)
                            _11795 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_11795 + 32] = mem[_11795 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _11346 + 164
                            mem[_11346 + 100] = 32
                            mem[_11346 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _12054 = mem[_11795]
                            s = 0
                            while s < _12054:
                                mem[_11346 + s + 164] = mem[_11795 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_12054) > _12054:
                                mem[_11346 + _12054 + 164] = 0
                            call stor2.mem[_11346 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_11346 + 168 len _12054 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_11346 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11346 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_11346 + idx + 232] = mem[_11346 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_11346 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _11346 + ceil32(return_data.size) + 165
                                mem[_11346 + 164] = return_data.size
                                mem[_11346 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_11346 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11346 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_11346 + ceil32(return_data.size) + idx + 233] = mem[_11346 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_11346 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_11346 + 196] == bool(mem[_11346 + 196])
                                    if not mem[_11346 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 and 0x100000000000000000000000000000000 > -1 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10:
                            revert with 'NH{q', 17
                        if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10:
                            revert with 'NH{q', 18
                        if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 << 128 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 != 0x100000000000000000000000000000000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not stor9.length:
                            revert with 'NH{q', 18
                        if stor15 > -(2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 << 128 / stor9.length) - 1:
                            revert with 'NH{q', 17
                        if stor15 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 << 128 / stor9.length) < stor15:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15 += 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 << 128 / stor9.length
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10) > 0:
                            if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10) - 1:
                                revert with 'NH{q', 17
                            totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10)
                            _11877 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10)
                            _12208 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_12208 + 32] = mem[_12208 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _11877 + 164
                            mem[_11877 + 100] = 32
                            mem[_11877 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _12574 = mem[_12208]
                            s = 0
                            while s < _12574:
                                mem[_11877 + s + 164] = mem[_12208 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_12574) <= _12574:
                                call stor2.mem[_11877 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_11877 + 168 len _12574 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_11877 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11877 + 168] = 32
                                        s = 0
                                        while s < 32:
                                            mem[_11877 + s + 232] = mem[_11877 + s + 132]
                                            s = s + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_11877 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _11877 + ceil32(return_data.size) + 165
                                    mem[_11877 + 164] = return_data.size
                                    mem[_11877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_11877 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11877 + ceil32(return_data.size) + 169] = 32
                                        s = 0
                                        while s < 32:
                                            mem[_11877 + ceil32(return_data.size) + s + 233] = mem[_11877 + s + 132]
                                            s = s + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_11877 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_11877 + 196] == bool(mem[_11877 + 196])
                                        if not mem[_11877 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_11877 + _12574 + 164] = 0
                                call stor2.mem[_11877 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_11877 + 168 len _12574 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_11877 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11877 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_11877 + idx + 232] = mem[_11877 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_11877 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _11877 + ceil32(return_data.size) + 165
                                    mem[_11877 + 164] = return_data.size
                                    mem[_11877 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_11877 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11877 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_11877 + ceil32(return_data.size) + idx + 233] = mem[_11877 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_11877 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_11877 + 196] == bool(mem[_11877 + 196])
                                        if not mem[_11877 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_160 != 1:
                    if nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_160 != 2:
                        revert with 0, 'Token metadata is unreachable'
                    if block.timestamp < nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if not stor14:
                        revert with 'NH{q', 18
                    nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                    nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                    if (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor12) / stor14 > 0:
                        if totalFarmed > -((block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor12) / stor14) - 1:
                            revert with 'NH{q', 17
                        totalFarmed += (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor12) / stor14
                        _10458 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor12) / stor14
                        _10489 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_10489 + 32] = mem[_10489 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[64] = _10458 + 164
                        mem[_10458 + 100] = 32
                        mem[_10458 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(stor2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _10561 = mem[_10489]
                        s = 0
                        while s < _10561:
                            mem[_10458 + s + 164] = mem[_10489 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_10561) > _10561:
                            mem[_10458 + _10561 + 164] = 0
                        call stor2.mem[_10458 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_10458 + 168 len _10561 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_10458 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_10458 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_10458 + idx + 232] = mem[_10458 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_10458 + 232]
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _10458 + ceil32(return_data.size) + 165
                            mem[_10458 + 164] = return_data.size
                            mem[_10458 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_10458 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_10458 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_10458 + ceil32(return_data.size) + idx + 233] = mem[_10458 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_10458 + ceil32(return_data.size) + 233]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_10458 + 196] == bool(mem[_10458 + 196])
                                if not mem[_10458 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require userInfo[address(msg.sender)].field_256 > 0
                    mem[0] = msg.sender
                    mem[32] = 6
                    if not stor15:
                        if stor16[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        require stor16[address(msg.sender)].field_0 >= 0
                        _10473 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10473] = 30
                        mem[_10473 + 32] = 'SafeMath: subtraction overflow'
                        if stor17[address(msg.sender)].field_0 > stor16[address(msg.sender)].field_128:
                            _10479 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10479 + idx + 68] = mem[_10473 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10479 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10479 + -mem[64] + 100
                        if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                            revert with 'NH{q', 17
                        if stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0 > 0:
                            if stor17[address(msg.sender)].field_0 > -stor16[address(msg.sender)].field_128 + stor17[address(msg.sender)].field_0 - 1:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 17
                            stor17[address(msg.sender)].field_0 = stor16[address(msg.sender)].field_128
                            _10807 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0
                            _11297 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_11297 + 32] = mem[_11297 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _10807 + 164
                            mem[_10807 + 100] = 32
                            mem[_10807 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _11706 = mem[_11297]
                            s = 0
                            while s < _11706:
                                mem[_10807 + s + 164] = mem[_11297 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_11706) > _11706:
                                mem[_10807 + _11706 + 164] = 0
                            call stor2.mem[_10807 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_10807 + 168 len _11706 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_10807 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_10807 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_10807 + idx + 232] = mem[_10807 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_10807 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _10807 + ceil32(return_data.size) + 165
                                mem[_10807 + 164] = return_data.size
                                mem[_10807 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_10807 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_10807 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_10807 + ceil32(return_data.size) + idx + 233] = mem[_10807 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_10807 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_10807 + 196] == bool(mem[_10807 + 196])
                                    if not mem[_10807 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if stor15 and userInfo[address(msg.sender)].field_256 > -1 / stor15:
                            revert with 'NH{q', 17
                        if not stor15:
                            revert with 'NH{q', 18
                        if stor15 * userInfo[address(msg.sender)].field_256 / stor15 != userInfo[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require stor15 * userInfo[address(msg.sender)].field_256 >= 0
                        if stor15 * userInfo[address(msg.sender)].field_256 >= 0 and stor16[address(msg.sender)].field_0 > (-1 * stor15 * userInfo[address(msg.sender)].field_256) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor15 * userInfo[address(msg.sender)].field_256 < 0 and stor16[address(msg.sender)].field_0 < (-1 * stor15 * userInfo[address(msg.sender)].field_256) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if stor16[address(msg.sender)].field_0 < 0:
                            require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                            require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                            _10586 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10586] = 30
                            mem[_10586 + 32] = 'SafeMath: subtraction overflow'
                            if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                _10615 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10615 + idx + 68] = mem[_10586 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10615 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10615 + -mem[64] + 100
                            if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                    revert with 'NH{q', 17
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = msg.sender
                                mem[32] = 17
                                stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                stor17[address(msg.sender)].field_128 = 0
                                _11522 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                _11906 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_11906 + 32] = mem[_11906 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _11522 + 164
                                mem[_11522 + 100] = 32
                                mem[_11522 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _12173 = mem[_11906]
                                s = 0
                                while s < _12173:
                                    mem[_11522 + s + 164] = mem[_11906 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_12173) > _12173:
                                    mem[_11522 + _12173 + 164] = 0
                                call stor2.mem[_11522 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_11522 + 168 len _12173 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_11522 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11522 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_11522 + idx + 232] = mem[_11522 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_11522 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _11522 + ceil32(return_data.size) + 165
                                    mem[_11522 + 164] = return_data.size
                                    mem[_11522 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_11522 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11522 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_11522 + ceil32(return_data.size) + idx + 233] = mem[_11522 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_11522 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_11522 + 196] == bool(mem[_11522 + 196])
                                        if not mem[_11522 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= stor15 * userInfo[address(msg.sender)].field_256:
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                _10562 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10562] = 30
                                mem[_10562 + 32] = 'SafeMath: subtraction overflow'
                                if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                    _10587 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10587 + idx + 68] = mem[_10562 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10587 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10587 + -mem[64] + 100
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                    if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                        revert with 'NH{q', 17
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 17
                                    stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                    stor17[address(msg.sender)].field_128 = 0
                                    _11430 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                    _11843 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_11843 + 32] = mem[_11843 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _11430 + 164
                                    mem[_11430 + 100] = 32
                                    mem[_11430 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(stor2) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _12100 = mem[_11843]
                                    s = 0
                                    while s < _12100:
                                        mem[_11430 + s + 164] = mem[_11843 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_12100) > _12100:
                                        mem[_11430 + _12100 + 164] = 0
                                    call stor2.mem[_11430 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_11430 + 168 len _12100 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_11430 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_11430 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_11430 + idx + 232] = mem[_11430 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_11430 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _11430 + ceil32(return_data.size) + 165
                                        mem[_11430 + 164] = return_data.size
                                        mem[_11430 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_11430 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_11430 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_11430 + ceil32(return_data.size) + idx + 233] = mem[_11430 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_11430 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_11430 + 196] == bool(mem[_11430 + 196])
                                            if not mem[_11430 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                require stor16[address(msg.sender)].field_0 < 0
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                _10601 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10601] = 30
                                mem[_10601 + 32] = 'SafeMath: subtraction overflow'
                                if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                    _10633 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10633 + idx + 68] = mem[_10601 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10633 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10633 + -mem[64] + 100
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                    if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                        revert with 'NH{q', 17
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 17
                                    stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                    stor17[address(msg.sender)].field_128 = 0
                                    _11558 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                    _11934 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_11934 + 32] = mem[_11934 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _11558 + 164
                                    mem[_11558 + 100] = 32
                                    mem[_11558 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(stor2) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _12203 = mem[_11934]
                                    s = 0
                                    while s < _12203:
                                        mem[_11558 + s + 164] = mem[_11934 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_12203) > _12203:
                                        mem[_11558 + _12203 + 164] = 0
                                    call stor2.mem[_11558 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_11558 + 168 len _12203 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_11558 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_11558 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_11558 + idx + 232] = mem[_11558 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_11558 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _11558 + ceil32(return_data.size) + 165
                                        mem[_11558 + 164] = return_data.size
                                        mem[_11558 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_11558 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_11558 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_11558 + ceil32(return_data.size) + idx + 233] = mem[_11558 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_11558 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_11558 + 196] == bool(mem[_11558 + 196])
                                            if not mem[_11558 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                    nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < userInfo[address(msg.sender)].field_512:
            mem[0] = userInfo[address(msg.sender)][idx + 2].field_0
            mem[32] = 7
            if nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_0 != msg.sender:
                revert with 0, 'Caller is not token staker'
            if not nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_160:
                if block.timestamp < nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512:
                    revert with 'NH{q', 17
                if block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 and stor11 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512:
                    revert with 'NH{q', 17
                if not stor14:
                    revert with 'NH{q', 18
                if (block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14 < nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768:
                    revert with 'NH{q', 17
                if stor9.length <= 0:
                    nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                    nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                    if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 > 0:
                        if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - 1:
                            revert with 'NH{q', 17
                        totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768
                        _15912 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768
                        _15952 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_15952 + 32] = mem[_15952 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[64] = _15912 + 164
                        mem[_15912 + 100] = 32
                        mem[_15912 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(stor2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _16047 = mem[_15952]
                        s = 0
                        while s < _16047:
                            mem[_15912 + s + 164] = mem[_15952 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_16047) > _16047:
                            mem[_15912 + _16047 + 164] = 0
                        call stor2.mem[_15912 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_15912 + 168 len _16047 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_15912 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_15912 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_15912 + idx + 232] = mem[_15912 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_15912 + 232]
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _15912 + ceil32(return_data.size) + 165
                            mem[_15912 + 164] = return_data.size
                            mem[_15912 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_15912 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_15912 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_15912 + ceil32(return_data.size) + idx + 233] = mem[_15912 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_15912 + ceil32(return_data.size) + 233]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_15912 + 196] == bool(mem[_15912 + 196])
                                if not mem[_15912 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 and 2 > -1 / ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768:
                        revert with 'NH{q', 17
                    if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 < 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10:
                        revert with 'NH{q', 17
                    require stor9.length > 0
                    if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10:
                        if not stor9.length:
                            revert with 'NH{q', 18
                        if stor15 > -(0 / stor9.length) - 1:
                            revert with 'NH{q', 17
                        if stor15 + (0 / stor9.length) < stor15:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15 += 0 / stor9.length
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10) > 0:
                            if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10) - 1:
                                revert with 'NH{q', 17
                            totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10)
                            _16669 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10)
                            _16974 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_16974 + 32] = mem[_16974 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _16669 + 164
                            mem[_16669 + 100] = 32
                            mem[_16669 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _17153 = mem[_16974]
                            s = 0
                            while s < _17153:
                                mem[_16669 + s + 164] = mem[_16974 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_17153) > _17153:
                                mem[_16669 + _17153 + 164] = 0
                            call stor2.mem[_16669 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_16669 + 168 len _17153 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_16669 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_16669 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_16669 + idx + 232] = mem[_16669 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_16669 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _16669 + ceil32(return_data.size) + 165
                                mem[_16669 + 164] = return_data.size
                                mem[_16669 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_16669 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_16669 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_16669 + ceil32(return_data.size) + idx + 233] = mem[_16669 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_16669 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_16669 + 196] == bool(mem[_16669 + 196])
                                    if not mem[_16669 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 and 0x100000000000000000000000000000000 > -1 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10:
                            revert with 'NH{q', 17
                        if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10:
                            revert with 'NH{q', 18
                        if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 << 128 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 != 0x100000000000000000000000000000000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not stor9.length:
                            revert with 'NH{q', 18
                        if stor15 > -(2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 << 128 / stor9.length) - 1:
                            revert with 'NH{q', 17
                        if stor15 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 << 128 / stor9.length) < stor15:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15 += 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 << 128 / stor9.length
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10) > 0:
                            if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10) - 1:
                                revert with 'NH{q', 17
                            totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10)
                            _17022 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10)
                            _17278 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_17278 + 32] = mem[_17278 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _17022 + 164
                            mem[_17022 + 100] = 32
                            mem[_17022 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _17567 = mem[_17278]
                            s = 0
                            while s < _17567:
                                mem[_17022 + s + 164] = mem[_17278 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_17567) <= _17567:
                                call stor2.mem[_17022 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_17022 + 168 len _17567 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_17022 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_17022 + 168] = 32
                                        s = 0
                                        while s < 32:
                                            mem[_17022 + s + 232] = mem[_17022 + s + 132]
                                            s = s + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_17022 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _17022 + ceil32(return_data.size) + 165
                                    mem[_17022 + 164] = return_data.size
                                    mem[_17022 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_17022 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_17022 + ceil32(return_data.size) + 169] = 32
                                        s = 0
                                        while s < 32:
                                            mem[_17022 + ceil32(return_data.size) + s + 233] = mem[_17022 + s + 132]
                                            s = s + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_17022 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_17022 + 196] == bool(mem[_17022 + 196])
                                        if not mem[_17022 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_17022 + _17567 + 164] = 0
                                call stor2.mem[_17022 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_17022 + 168 len _17567 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_17022 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_17022 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_17022 + idx + 232] = mem[_17022 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_17022 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _17022 + ceil32(return_data.size) + 165
                                    mem[_17022 + 164] = return_data.size
                                    mem[_17022 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_17022 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_17022 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_17022 + ceil32(return_data.size) + idx + 233] = mem[_17022 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_17022 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_17022 + 196] == bool(mem[_17022 + 196])
                                        if not mem[_17022 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_160 != 1:
                    if nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_160 != 2:
                        revert with 0, 'Token metadata is unreachable'
                    if block.timestamp < nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512:
                        revert with 'NH{q', 17
                    if not stor14:
                        revert with 'NH{q', 18
                    nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                    nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                    if (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor12) / stor14 > 0:
                        if totalFarmed > -((block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor12) / stor14) - 1:
                            revert with 'NH{q', 17
                        totalFarmed += (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor12) / stor14
                        _15904 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor12) / stor14
                        _15930 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_15930 + 32] = mem[_15930 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[64] = _15904 + 164
                        mem[_15904 + 100] = 32
                        mem[_15904 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(stor2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _15997 = mem[_15930]
                        s = 0
                        while s < _15997:
                            mem[_15904 + s + 164] = mem[_15930 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_15997) > _15997:
                            mem[_15904 + _15997 + 164] = 0
                        call stor2.mem[_15904 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_15904 + 168 len _15997 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_15904 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_15904 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_15904 + idx + 232] = mem[_15904 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_15904 + 232]
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _15904 + ceil32(return_data.size) + 165
                            mem[_15904 + 164] = return_data.size
                            mem[_15904 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_15904 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_15904 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_15904 + ceil32(return_data.size) + idx + 233] = mem[_15904 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_15904 + ceil32(return_data.size) + 233]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_15904 + 196] == bool(mem[_15904 + 196])
                                if not mem[_15904 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require userInfo[address(msg.sender)].field_256 > 0
                    mem[0] = msg.sender
                    mem[32] = 6
                    if not stor15:
                        if stor16[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        require stor16[address(msg.sender)].field_0 >= 0
                        _15918 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15918] = 30
                        mem[_15918 + 32] = 'SafeMath: subtraction overflow'
                        if stor17[address(msg.sender)].field_0 > stor16[address(msg.sender)].field_128:
                            _15922 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15922 + idx + 68] = mem[_15918 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15922 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _15922 + -mem[64] + 100
                        if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                            revert with 'NH{q', 17
                        if stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0 > 0:
                            if stor17[address(msg.sender)].field_0 > -stor16[address(msg.sender)].field_128 + stor17[address(msg.sender)].field_0 - 1:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 17
                            stor17[address(msg.sender)].field_0 = stor16[address(msg.sender)].field_128
                            _16203 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0
                            _16637 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_16637 + 32] = mem[_16637 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _16203 + 164
                            mem[_16203 + 100] = 32
                            mem[_16203 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _16919 = mem[_16637]
                            s = 0
                            while s < _16919:
                                mem[_16203 + s + 164] = mem[_16637 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_16919) > _16919:
                                mem[_16203 + _16919 + 164] = 0
                            call stor2.mem[_16203 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_16203 + 168 len _16919 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_16203 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_16203 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_16203 + idx + 232] = mem[_16203 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_16203 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _16203 + ceil32(return_data.size) + 165
                                mem[_16203 + 164] = return_data.size
                                mem[_16203 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_16203 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_16203 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_16203 + ceil32(return_data.size) + idx + 233] = mem[_16203 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_16203 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_16203 + 196] == bool(mem[_16203 + 196])
                                    if not mem[_16203 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if stor15 and userInfo[address(msg.sender)].field_256 > -1 / stor15:
                            revert with 'NH{q', 17
                        if not stor15:
                            revert with 'NH{q', 18
                        if stor15 * userInfo[address(msg.sender)].field_256 / stor15 != userInfo[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require stor15 * userInfo[address(msg.sender)].field_256 >= 0
                        if stor15 * userInfo[address(msg.sender)].field_256 >= 0 and stor16[address(msg.sender)].field_0 > (-1 * stor15 * userInfo[address(msg.sender)].field_256) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor15 * userInfo[address(msg.sender)].field_256 < 0 and stor16[address(msg.sender)].field_0 < (-1 * stor15 * userInfo[address(msg.sender)].field_256) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if stor16[address(msg.sender)].field_0 < 0:
                            require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                            require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                            _16018 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16018] = 30
                            mem[_16018 + 32] = 'SafeMath: subtraction overflow'
                            if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                _16046 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_16046 + idx + 68] = mem[_16018 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_16046 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _16046 + -mem[64] + 100
                            if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                    revert with 'NH{q', 17
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = msg.sender
                                mem[32] = 17
                                stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                stor17[address(msg.sender)].field_128 = 0
                                _16780 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                _17038 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_17038 + 32] = mem[_17038 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _16780 + 164
                                mem[_16780 + 100] = 32
                                mem[_16780 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _17246 = mem[_17038]
                                s = 0
                                while s < _17246:
                                    mem[_16780 + s + 164] = mem[_17038 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_17246) > _17246:
                                    mem[_16780 + _17246 + 164] = 0
                                call stor2.mem[_16780 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_16780 + 168 len _17246 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_16780 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_16780 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_16780 + idx + 232] = mem[_16780 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_16780 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _16780 + ceil32(return_data.size) + 165
                                    mem[_16780 + 164] = return_data.size
                                    mem[_16780 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_16780 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_16780 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_16780 + ceil32(return_data.size) + idx + 233] = mem[_16780 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_16780 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_16780 + 196] == bool(mem[_16780 + 196])
                                        if not mem[_16780 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= stor15 * userInfo[address(msg.sender)].field_256:
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                _15998 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15998] = 30
                                mem[_15998 + 32] = 'SafeMath: subtraction overflow'
                                if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                    _16019 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_16019 + idx + 68] = mem[_15998 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_16019 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _16019 + -mem[64] + 100
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                    if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                        revert with 'NH{q', 17
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 17
                                    stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                    stor17[address(msg.sender)].field_128 = 0
                                    _16718 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                    _16997 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_16997 + 32] = mem[_16997 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _16718 + 164
                                    mem[_16718 + 100] = 32
                                    mem[_16718 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(stor2) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _17187 = mem[_16997]
                                    s = 0
                                    while s < _17187:
                                        mem[_16718 + s + 164] = mem[_16997 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_17187) > _17187:
                                        mem[_16718 + _17187 + 164] = 0
                                    call stor2.mem[_16718 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_16718 + 168 len _17187 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_16718 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_16718 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_16718 + idx + 232] = mem[_16718 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_16718 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _16718 + ceil32(return_data.size) + 165
                                        mem[_16718 + 164] = return_data.size
                                        mem[_16718 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_16718 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_16718 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_16718 + ceil32(return_data.size) + idx + 233] = mem[_16718 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_16718 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_16718 + 196] == bool(mem[_16718 + 196])
                                            if not mem[_16718 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                require stor16[address(msg.sender)].field_0 < 0
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                _16036 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_16036] = 30
                                mem[_16036 + 32] = 'SafeMath: subtraction overflow'
                                if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                    _16065 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_16065 + idx + 68] = mem[_16036 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_16065 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _16065 + -mem[64] + 100
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                    if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                        revert with 'NH{q', 17
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 17
                                    stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                    stor17[address(msg.sender)].field_128 = 0
                                    _16807 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                    _17060 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_17060 + 32] = mem[_17060 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _16807 + 164
                                    mem[_16807 + 100] = 32
                                    mem[_16807 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(stor2) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _17273 = mem[_17060]
                                    s = 0
                                    while s < _17273:
                                        mem[_16807 + s + 164] = mem[_17060 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_17273) > _17273:
                                        mem[_16807 + _17273 + 164] = 0
                                    call stor2.mem[_16807 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_16807 + 168 len _17273 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_16807 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_16807 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_16807 + idx + 232] = mem[_16807 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_16807 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _16807 + ceil32(return_data.size) + 165
                                        mem[_16807 + 164] = return_data.size
                                        mem[_16807 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_16807 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_16807 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_16807 + ceil32(return_data.size) + idx + 233] = mem[_16807 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_16807 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_16807 + 196] == bool(mem[_16807 + 196])
                                            if not mem[_16807 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                    nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[96] = 0xa52b64c500000000000000000000000000000000000000000000000000000000
        call stor1.0xa52b64c5 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        _5 = mem[96]
        require mem[96] == bool(mem[96])
        _12 = mem[128]
        require mem[128] <= test266151307()
        require mem[128] + 127 < return_data.size + 96
        _16 = mem[mem[128] + 96]
        if mem[mem[128] + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[128] + 96]) + 97 > test266151307() or floor32(mem[mem[128] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[128] + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _16
        require _12 + (32 * _16) + 32 <= return_data.size
        idx = _12 + 128
        s = ceil32(return_data.size) + 128
        while idx < _12 + (32 * _16) + 128:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if not _5:
            mem[0] = msg.sender
            mem[32] = 6
            idx = 0
            while idx < userInfo[address(msg.sender)].field_0:
                mem[0] = userInfo[address(msg.sender)][idx].field_0
                mem[32] = 7
                if nftInfo[stor6[address(msg.sender)][idx].field_0].field_0 != msg.sender:
                    revert with 0, 'Caller is not token staker'
                if not nftInfo[stor6[address(msg.sender)][idx].field_0].field_160:
                    if block.timestamp < nftInfo[stor6[address(msg.sender)][idx].field_0].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 and stor11 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx].field_0].field_512:
                        revert with 'NH{q', 17
                    if not stor14:
                        revert with 'NH{q', 18
                    if (block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14 < nftInfo[stor6[address(msg.sender)][idx].field_0].field_768:
                        revert with 'NH{q', 17
                    if stor9.length <= 0:
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 > 0:
                            if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - 1:
                                revert with 'NH{q', 17
                            totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768
                            _10469 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768
                            _10516 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_10516 + 32] = mem[_10516 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _10469 + 164
                            mem[_10469 + 100] = 32
                            mem[_10469 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _10625 = mem[_10516]
                            s = 0
                            while s < _10625:
                                mem[_10469 + s + 164] = mem[_10516 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_10625) > _10625:
                                mem[_10469 + _10625 + 164] = 0
                            call stor2.mem[_10469 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_10469 + 168 len _10625 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_10469 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_10469 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_10469 + idx + 232] = mem[_10469 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_10469 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _10469 + ceil32(return_data.size) + 165
                                mem[_10469 + 164] = return_data.size
                                mem[_10469 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_10469 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_10469 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_10469 + ceil32(return_data.size) + idx + 233] = mem[_10469 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_10469 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_10469 + 196] == bool(mem[_10469 + 196])
                                    if not mem[_10469 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 and 2 > -1 / ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768:
                            revert with 'NH{q', 17
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 < 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10:
                            revert with 'NH{q', 17
                        require stor9.length > 0
                        if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10:
                            if not stor9.length:
                                revert with 'NH{q', 18
                            if stor15 > -(0 / stor9.length) - 1:
                                revert with 'NH{q', 17
                            if stor15 + (0 / stor9.length) < stor15:
                                revert with 0, 'SafeMath: addition overflow'
                            stor15 += 0 / stor9.length
                            nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                            nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                            if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10) > 0:
                                if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10) - 1:
                                    revert with 'NH{q', 17
                                totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10)
                                _11359 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10)
                                _11802 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_11802 + 32] = mem[_11802 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _11359 + 164
                                mem[_11359 + 100] = 32
                                mem[_11359 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _12060 = mem[_11802]
                                s = 0
                                while s < _12060:
                                    mem[_11359 + s + 164] = mem[_11802 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_12060) > _12060:
                                    mem[_11359 + _12060 + 164] = 0
                                call stor2.mem[_11359 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_11359 + 168 len _12060 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_11359 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11359 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_11359 + idx + 232] = mem[_11359 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_11359 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _11359 + ceil32(return_data.size) + 165
                                    mem[_11359 + 164] = return_data.size
                                    mem[_11359 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_11359 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11359 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_11359 + ceil32(return_data.size) + idx + 233] = mem[_11359 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_11359 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_11359 + 196] == bool(mem[_11359 + 196])
                                        if not mem[_11359 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 and 0x100000000000000000000000000000000 > -1 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10:
                                revert with 'NH{q', 17
                            if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10:
                                revert with 'NH{q', 18
                            if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 << 128 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 != 0x100000000000000000000000000000000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not stor9.length:
                                revert with 'NH{q', 18
                            if stor15 > -(2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 << 128 / stor9.length) - 1:
                                revert with 'NH{q', 17
                            if stor15 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 << 128 / stor9.length) < stor15:
                                revert with 0, 'SafeMath: addition overflow'
                            stor15 += 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 << 128 / stor9.length
                            nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                            nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                            if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10) > 0:
                                if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10) - 1:
                                    revert with 'NH{q', 17
                                totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10)
                                _11886 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10)
                                _12224 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_12224 + 32] = mem[_12224 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _11886 + 164
                                mem[_11886 + 100] = 32
                                mem[_11886 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _12591 = mem[_12224]
                                s = 0
                                while s < _12591:
                                    mem[_11886 + s + 164] = mem[_12224 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_12591) <= _12591:
                                    call stor2.mem[_11886 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_11886 + 168 len _12591 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_11886 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_11886 + 168] = 32
                                            s = 0
                                            while s < 32:
                                                mem[_11886 + s + 232] = mem[_11886 + s + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_11886 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _11886 + ceil32(return_data.size) + 165
                                        mem[_11886 + 164] = return_data.size
                                        mem[_11886 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_11886 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_11886 + ceil32(return_data.size) + 169] = 32
                                            s = 0
                                            while s < 32:
                                                mem[_11886 + ceil32(return_data.size) + s + 233] = mem[_11886 + s + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_11886 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_11886 + 196] == bool(mem[_11886 + 196])
                                            if not mem[_11886 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_11886 + _12591 + 164] = 0
                                    call stor2.mem[_11886 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_11886 + 168 len _12591 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_11886 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_11886 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_11886 + idx + 232] = mem[_11886 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_11886 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _11886 + ceil32(return_data.size) + 165
                                        mem[_11886 + 164] = return_data.size
                                        mem[_11886 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_11886 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_11886 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_11886 + ceil32(return_data.size) + idx + 233] = mem[_11886 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_11886 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_11886 + 196] == bool(mem[_11886 + 196])
                                            if not mem[_11886 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if nftInfo[stor6[address(msg.sender)][idx].field_0].field_160 != 1:
                        if nftInfo[stor6[address(msg.sender)][idx].field_0].field_160 != 2:
                            revert with 0, 'Token metadata is unreachable'
                        if block.timestamp < nftInfo[stor6[address(msg.sender)][idx].field_0].field_512:
                            revert with 'NH{q', 17
                        if block.timestamp - nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx].field_0].field_512:
                            revert with 'NH{q', 17
                        if not stor14:
                            revert with 'NH{q', 18
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                        if (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor12) / stor14 > 0:
                            if totalFarmed > -((block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor12) / stor14) - 1:
                                revert with 'NH{q', 17
                            totalFarmed += (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor12) / stor14
                            _10459 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor12) / stor14
                            _10492 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_10492 + 32] = mem[_10492 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _10459 + 164
                            mem[_10459 + 100] = 32
                            mem[_10459 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _10566 = mem[_10492]
                            s = 0
                            while s < _10566:
                                mem[_10459 + s + 164] = mem[_10492 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_10566) > _10566:
                                mem[_10459 + _10566 + 164] = 0
                            call stor2.mem[_10459 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_10459 + 168 len _10566 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_10459 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_10459 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_10459 + idx + 232] = mem[_10459 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_10459 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _10459 + ceil32(return_data.size) + 165
                                mem[_10459 + 164] = return_data.size
                                mem[_10459 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_10459 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_10459 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_10459 + ceil32(return_data.size) + idx + 233] = mem[_10459 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_10459 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_10459 + 196] == bool(mem[_10459 + 196])
                                    if not mem[_10459 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require userInfo[address(msg.sender)].field_256 > 0
                        mem[0] = msg.sender
                        mem[32] = 6
                        if not stor15:
                            if stor16[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            require stor16[address(msg.sender)].field_0 >= 0
                            _10474 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10474] = 30
                            mem[_10474 + 32] = 'SafeMath: subtraction overflow'
                            if stor17[address(msg.sender)].field_0 > stor16[address(msg.sender)].field_128:
                                _10481 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10481 + idx + 68] = mem[_10474 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10481 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10481 + -mem[64] + 100
                            if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0 > 0:
                                if stor17[address(msg.sender)].field_0 > -stor16[address(msg.sender)].field_128 + stor17[address(msg.sender)].field_0 - 1:
                                    revert with 'NH{q', 17
                                if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = msg.sender
                                mem[32] = 17
                                stor17[address(msg.sender)].field_0 = stor16[address(msg.sender)].field_128
                                _10822 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0
                                _11313 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_11313 + 32] = mem[_11313 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _10822 + 164
                                mem[_10822 + 100] = 32
                                mem[_10822 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _11715 = mem[_11313]
                                s = 0
                                while s < _11715:
                                    mem[_10822 + s + 164] = mem[_11313 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_11715) > _11715:
                                    mem[_10822 + _11715 + 164] = 0
                                call stor2.mem[_10822 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_10822 + 168 len _11715 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_10822 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_10822 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_10822 + idx + 232] = mem[_10822 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_10822 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _10822 + ceil32(return_data.size) + 165
                                    mem[_10822 + 164] = return_data.size
                                    mem[_10822 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_10822 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_10822 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_10822 + ceil32(return_data.size) + idx + 233] = mem[_10822 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_10822 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_10822 + 196] == bool(mem[_10822 + 196])
                                        if not mem[_10822 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if stor15 and userInfo[address(msg.sender)].field_256 > -1 / stor15:
                                revert with 'NH{q', 17
                            if not stor15:
                                revert with 'NH{q', 18
                            if stor15 * userInfo[address(msg.sender)].field_256 / stor15 != userInfo[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require stor15 * userInfo[address(msg.sender)].field_256 >= 0
                            if stor15 * userInfo[address(msg.sender)].field_256 >= 0 and stor16[address(msg.sender)].field_0 > (-1 * stor15 * userInfo[address(msg.sender)].field_256) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor15 * userInfo[address(msg.sender)].field_256 < 0 and stor16[address(msg.sender)].field_0 < (-1 * stor15 * userInfo[address(msg.sender)].field_256) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_0 < 0:
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                _10594 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10594] = 30
                                mem[_10594 + 32] = 'SafeMath: subtraction overflow'
                                if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                    _10624 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10624 + idx + 68] = mem[_10594 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10624 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10624 + -mem[64] + 100
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                    if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                        revert with 'NH{q', 17
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 17
                                    stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                    stor17[address(msg.sender)].field_128 = 0
                                    _11537 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                    _11916 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_11916 + 32] = mem[_11916 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _11537 + 164
                                    mem[_11537 + 100] = 32
                                    mem[_11537 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(stor2) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _12186 = mem[_11916]
                                    s = 0
                                    while s < _12186:
                                        mem[_11537 + s + 164] = mem[_11916 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_12186) > _12186:
                                        mem[_11537 + _12186 + 164] = 0
                                    call stor2.mem[_11537 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_11537 + 168 len _12186 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_11537 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_11537 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_11537 + idx + 232] = mem[_11537 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_11537 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _11537 + ceil32(return_data.size) + 165
                                        mem[_11537 + 164] = return_data.size
                                        mem[_11537 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_11537 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_11537 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_11537 + ceil32(return_data.size) + idx + 233] = mem[_11537 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_11537 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_11537 + 196] == bool(mem[_11537 + 196])
                                            if not mem[_11537 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= stor15 * userInfo[address(msg.sender)].field_256:
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                    _10567 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10567] = 30
                                    mem[_10567 + 32] = 'SafeMath: subtraction overflow'
                                    if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                        _10595 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10595 + idx + 68] = mem[_10567 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10595 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10595 + -mem[64] + 100
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                        if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                            revert with 'NH{q', 17
                                        if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 17
                                        stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                        stor17[address(msg.sender)].field_128 = 0
                                        _11444 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                        _11852 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_11852 + 32] = mem[_11852 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _11444 + 164
                                        mem[_11444 + 100] = 32
                                        mem[_11444 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(stor2) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _12114 = mem[_11852]
                                        s = 0
                                        while s < _12114:
                                            mem[_11444 + s + 164] = mem[_11852 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_12114) > _12114:
                                            mem[_11444 + _12114 + 164] = 0
                                        call stor2.mem[_11444 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_11444 + 168 len _12114 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_11444 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_11444 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_11444 + idx + 232] = mem[_11444 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_11444 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _11444 + ceil32(return_data.size) + 165
                                            mem[_11444 + 164] = return_data.size
                                            mem[_11444 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_11444 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_11444 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_11444 + ceil32(return_data.size) + idx + 233] = mem[_11444 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_11444 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_11444 + 196] == bool(mem[_11444 + 196])
                                                if not mem[_11444 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    require stor16[address(msg.sender)].field_0 < 0
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                    _10605 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10605] = 30
                                    mem[_10605 + 32] = 'SafeMath: subtraction overflow'
                                    if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                        _10640 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10640 + idx + 68] = mem[_10605 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10640 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10640 + -mem[64] + 100
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                        if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                            revert with 'NH{q', 17
                                        if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 17
                                        stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                        stor17[address(msg.sender)].field_128 = 0
                                        _11569 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                        _11943 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_11943 + 32] = mem[_11943 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _11569 + 164
                                        mem[_11569 + 100] = 32
                                        mem[_11569 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(stor2) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _12219 = mem[_11943]
                                        s = 0
                                        while s < _12219:
                                            mem[_11569 + s + 164] = mem[_11943 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_12219) > _12219:
                                            mem[_11569 + _12219 + 164] = 0
                                        call stor2.mem[_11569 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_11569 + 168 len _12219 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_11569 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_11569 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_11569 + idx + 232] = mem[_11569 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_11569 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _11569 + ceil32(return_data.size) + 165
                                            mem[_11569 + 164] = return_data.size
                                            mem[_11569 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_11569 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_11569 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_11569 + ceil32(return_data.size) + idx + 233] = mem[_11569 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_11569 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_11569 + 196] == bool(mem[_11569 + 196])
                                                if not mem[_11569 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < userInfo[address(msg.sender)].field_256:
                mem[0] = userInfo[address(msg.sender)][idx + 1].field_0
                mem[32] = 7
                if nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_0 != msg.sender:
                    revert with 0, 'Caller is not token staker'
                if not nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_160:
                    if block.timestamp < nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 and stor11 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if not stor14:
                        revert with 'NH{q', 18
                    if (block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14 < nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768:
                        revert with 'NH{q', 17
                    if stor9.length <= 0:
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 > 0:
                            if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - 1:
                                revert with 'NH{q', 17
                            totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768
                            _15913 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768
                            _15955 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_15955 + 32] = mem[_15955 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _15913 + 164
                            mem[_15913 + 100] = 32
                            mem[_15913 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _16053 = mem[_15955]
                            s = 0
                            while s < _16053:
                                mem[_15913 + s + 164] = mem[_15955 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_16053) > _16053:
                                mem[_15913 + _16053 + 164] = 0
                            call stor2.mem[_15913 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_15913 + 168 len _16053 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_15913 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_15913 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_15913 + idx + 232] = mem[_15913 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_15913 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _15913 + ceil32(return_data.size) + 165
                                mem[_15913 + 164] = return_data.size
                                mem[_15913 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_15913 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_15913 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_15913 + ceil32(return_data.size) + idx + 233] = mem[_15913 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_15913 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_15913 + 196] == bool(mem[_15913 + 196])
                                    if not mem[_15913 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 and 2 > -1 / ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768:
                            revert with 'NH{q', 17
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 < 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10:
                            revert with 'NH{q', 17
                        require stor9.length > 0
                        if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10:
                            if not stor9.length:
                                revert with 'NH{q', 18
                            if stor15 > -(0 / stor9.length) - 1:
                                revert with 'NH{q', 17
                            if stor15 + (0 / stor9.length) < stor15:
                                revert with 0, 'SafeMath: addition overflow'
                            stor15 += 0 / stor9.length
                            nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                            nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                            if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10) > 0:
                                if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10) - 1:
                                    revert with 'NH{q', 17
                                totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10)
                                _16677 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10)
                                _16978 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_16978 + 32] = mem[_16978 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _16677 + 164
                                mem[_16677 + 100] = 32
                                mem[_16677 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _17157 = mem[_16978]
                                s = 0
                                while s < _17157:
                                    mem[_16677 + s + 164] = mem[_16978 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_17157) > _17157:
                                    mem[_16677 + _17157 + 164] = 0
                                call stor2.mem[_16677 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_16677 + 168 len _17157 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_16677 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_16677 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_16677 + idx + 232] = mem[_16677 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_16677 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _16677 + ceil32(return_data.size) + 165
                                    mem[_16677 + 164] = return_data.size
                                    mem[_16677 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_16677 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_16677 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_16677 + ceil32(return_data.size) + idx + 233] = mem[_16677 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_16677 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_16677 + 196] == bool(mem[_16677 + 196])
                                        if not mem[_16677 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 and 0x100000000000000000000000000000000 > -1 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10:
                                revert with 'NH{q', 17
                            if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10:
                                revert with 'NH{q', 18
                            if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 << 128 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 != 0x100000000000000000000000000000000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not stor9.length:
                                revert with 'NH{q', 18
                            if stor15 > -(2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 << 128 / stor9.length) - 1:
                                revert with 'NH{q', 17
                            if stor15 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 << 128 / stor9.length) < stor15:
                                revert with 0, 'SafeMath: addition overflow'
                            stor15 += 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 << 128 / stor9.length
                            nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                            nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                            if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10) > 0:
                                if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10) - 1:
                                    revert with 'NH{q', 17
                                totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10)
                                _17028 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10)
                                _17290 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_17290 + 32] = mem[_17290 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _17028 + 164
                                mem[_17028 + 100] = 32
                                mem[_17028 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _17579 = mem[_17290]
                                s = 0
                                while s < _17579:
                                    mem[_17028 + s + 164] = mem[_17290 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_17579) <= _17579:
                                    call stor2.mem[_17028 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_17028 + 168 len _17579 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_17028 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_17028 + 168] = 32
                                            s = 0
                                            while s < 32:
                                                mem[_17028 + s + 232] = mem[_17028 + s + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_17028 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _17028 + ceil32(return_data.size) + 165
                                        mem[_17028 + 164] = return_data.size
                                        mem[_17028 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_17028 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_17028 + ceil32(return_data.size) + 169] = 32
                                            s = 0
                                            while s < 32:
                                                mem[_17028 + ceil32(return_data.size) + s + 233] = mem[_17028 + s + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_17028 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_17028 + 196] == bool(mem[_17028 + 196])
                                            if not mem[_17028 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_17028 + _17579 + 164] = 0
                                    call stor2.mem[_17028 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_17028 + 168 len _17579 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_17028 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_17028 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_17028 + idx + 232] = mem[_17028 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_17028 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _17028 + ceil32(return_data.size) + 165
                                        mem[_17028 + 164] = return_data.size
                                        mem[_17028 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_17028 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_17028 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_17028 + ceil32(return_data.size) + idx + 233] = mem[_17028 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_17028 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_17028 + 196] == bool(mem[_17028 + 196])
                                            if not mem[_17028 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_160 != 1:
                        if nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_160 != 2:
                            revert with 0, 'Token metadata is unreachable'
                        if block.timestamp < nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if not stor14:
                            revert with 'NH{q', 18
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                        if (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor12) / stor14 > 0:
                            if totalFarmed > -((block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor12) / stor14) - 1:
                                revert with 'NH{q', 17
                            totalFarmed += (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor12) / stor14
                            _15905 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor12) / stor14
                            _15933 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_15933 + 32] = mem[_15933 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _15905 + 164
                            mem[_15905 + 100] = 32
                            mem[_15905 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _16001 = mem[_15933]
                            s = 0
                            while s < _16001:
                                mem[_15905 + s + 164] = mem[_15933 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_16001) > _16001:
                                mem[_15905 + _16001 + 164] = 0
                            call stor2.mem[_15905 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_15905 + 168 len _16001 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_15905 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_15905 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_15905 + idx + 232] = mem[_15905 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_15905 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _15905 + ceil32(return_data.size) + 165
                                mem[_15905 + 164] = return_data.size
                                mem[_15905 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_15905 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_15905 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_15905 + ceil32(return_data.size) + idx + 233] = mem[_15905 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_15905 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_15905 + 196] == bool(mem[_15905 + 196])
                                    if not mem[_15905 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require userInfo[address(msg.sender)].field_256 > 0
                        mem[0] = msg.sender
                        mem[32] = 6
                        if not stor15:
                            if stor16[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            require stor16[address(msg.sender)].field_0 >= 0
                            _15919 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15919] = 30
                            mem[_15919 + 32] = 'SafeMath: subtraction overflow'
                            if stor17[address(msg.sender)].field_0 > stor16[address(msg.sender)].field_128:
                                _15924 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_15924 + idx + 68] = mem[_15919 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15924 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _15924 + -mem[64] + 100
                            if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0 > 0:
                                if stor17[address(msg.sender)].field_0 > -stor16[address(msg.sender)].field_128 + stor17[address(msg.sender)].field_0 - 1:
                                    revert with 'NH{q', 17
                                if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = msg.sender
                                mem[32] = 17
                                stor17[address(msg.sender)].field_0 = stor16[address(msg.sender)].field_128
                                _16215 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0
                                _16645 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_16645 + 32] = mem[_16645 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _16215 + 164
                                mem[_16215 + 100] = 32
                                mem[_16215 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _16927 = mem[_16645]
                                s = 0
                                while s < _16927:
                                    mem[_16215 + s + 164] = mem[_16645 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_16927) > _16927:
                                    mem[_16215 + _16927 + 164] = 0
                                call stor2.mem[_16215 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_16215 + 168 len _16927 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_16215 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_16215 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_16215 + idx + 232] = mem[_16215 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_16215 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _16215 + ceil32(return_data.size) + 165
                                    mem[_16215 + 164] = return_data.size
                                    mem[_16215 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_16215 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_16215 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_16215 + ceil32(return_data.size) + idx + 233] = mem[_16215 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_16215 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_16215 + 196] == bool(mem[_16215 + 196])
                                        if not mem[_16215 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if stor15 and userInfo[address(msg.sender)].field_256 > -1 / stor15:
                                revert with 'NH{q', 17
                            if not stor15:
                                revert with 'NH{q', 18
                            if stor15 * userInfo[address(msg.sender)].field_256 / stor15 != userInfo[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require stor15 * userInfo[address(msg.sender)].field_256 >= 0
                            if stor15 * userInfo[address(msg.sender)].field_256 >= 0 and stor16[address(msg.sender)].field_0 > (-1 * stor15 * userInfo[address(msg.sender)].field_256) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor15 * userInfo[address(msg.sender)].field_256 < 0 and stor16[address(msg.sender)].field_0 < (-1 * stor15 * userInfo[address(msg.sender)].field_256) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_0 < 0:
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                _16025 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_16025] = 30
                                mem[_16025 + 32] = 'SafeMath: subtraction overflow'
                                if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                    _16052 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_16052 + idx + 68] = mem[_16025 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_16052 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _16052 + -mem[64] + 100
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                    if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                        revert with 'NH{q', 17
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 17
                                    stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                    stor17[address(msg.sender)].field_128 = 0
                                    _16790 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                    _17046 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_17046 + 32] = mem[_17046 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _16790 + 164
                                    mem[_16790 + 100] = 32
                                    mem[_16790 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(stor2) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _17258 = mem[_17046]
                                    s = 0
                                    while s < _17258:
                                        mem[_16790 + s + 164] = mem[_17046 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_17258) > _17258:
                                        mem[_16790 + _17258 + 164] = 0
                                    call stor2.mem[_16790 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_16790 + 168 len _17258 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_16790 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_16790 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_16790 + idx + 232] = mem[_16790 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_16790 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _16790 + ceil32(return_data.size) + 165
                                        mem[_16790 + 164] = return_data.size
                                        mem[_16790 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_16790 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_16790 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_16790 + ceil32(return_data.size) + idx + 233] = mem[_16790 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_16790 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_16790 + 196] == bool(mem[_16790 + 196])
                                            if not mem[_16790 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= stor15 * userInfo[address(msg.sender)].field_256:
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                    _16002 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16002] = 30
                                    mem[_16002 + 32] = 'SafeMath: subtraction overflow'
                                    if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                        _16026 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_16026 + idx + 68] = mem[_16002 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_16026 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _16026 + -mem[64] + 100
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                        if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                            revert with 'NH{q', 17
                                        if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 17
                                        stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                        stor17[address(msg.sender)].field_128 = 0
                                        _16729 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                        _17004 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_17004 + 32] = mem[_17004 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _16729 + 164
                                        mem[_16729 + 100] = 32
                                        mem[_16729 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(stor2) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _17198 = mem[_17004]
                                        s = 0
                                        while s < _17198:
                                            mem[_16729 + s + 164] = mem[_17004 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_17198) > _17198:
                                            mem[_16729 + _17198 + 164] = 0
                                        call stor2.mem[_16729 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_16729 + 168 len _17198 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_16729 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_16729 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_16729 + idx + 232] = mem[_16729 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_16729 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _16729 + ceil32(return_data.size) + 165
                                            mem[_16729 + 164] = return_data.size
                                            mem[_16729 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_16729 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_16729 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_16729 + ceil32(return_data.size) + idx + 233] = mem[_16729 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_16729 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_16729 + 196] == bool(mem[_16729 + 196])
                                                if not mem[_16729 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    require stor16[address(msg.sender)].field_0 < 0
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                    _16040 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16040] = 30
                                    mem[_16040 + 32] = 'SafeMath: subtraction overflow'
                                    if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                        _16070 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_16070 + idx + 68] = mem[_16040 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_16070 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _16070 + -mem[64] + 100
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                        if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                            revert with 'NH{q', 17
                                        if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 17
                                        stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                        stor17[address(msg.sender)].field_128 = 0
                                        _16815 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                        _17068 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_17068 + 32] = mem[_17068 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _16815 + 164
                                        mem[_16815 + 100] = 32
                                        mem[_16815 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(stor2) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _17285 = mem[_17068]
                                        s = 0
                                        while s < _17285:
                                            mem[_16815 + s + 164] = mem[_17068 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_17285) > _17285:
                                            mem[_16815 + _17285 + 164] = 0
                                        call stor2.mem[_16815 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_16815 + 168 len _17285 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_16815 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_16815 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_16815 + idx + 232] = mem[_16815 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_16815 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _16815 + ceil32(return_data.size) + 165
                                            mem[_16815 + 164] = return_data.size
                                            mem[_16815 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_16815 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_16815 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_16815 + ceil32(return_data.size) + idx + 233] = mem[_16815 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_16815 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_16815 + 196] == bool(mem[_16815 + 196])
                                                if not mem[_16815 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < userInfo[address(msg.sender)].field_512:
                mem[0] = userInfo[address(msg.sender)][idx + 2].field_0
                mem[32] = 7
                if nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_0 != msg.sender:
                    revert with 0, 'Caller is not token staker'
                if not nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_160:
                    if block.timestamp < nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 and stor11 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512:
                        revert with 'NH{q', 17
                    if not stor14:
                        revert with 'NH{q', 18
                    if (block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14 < nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768:
                        revert with 'NH{q', 17
                    if stor9.length <= 0:
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 > 0:
                            if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - 1:
                                revert with 'NH{q', 17
                            totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768
                            _20746 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768
                            _20768 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_20768 + 32] = mem[_20768 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _20746 + 164
                            mem[_20746 + 100] = 32
                            mem[_20746 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _20819 = mem[_20768]
                            s = 0
                            while s < _20819:
                                mem[_20746 + s + 164] = mem[_20768 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_20819) > _20819:
                                mem[_20746 + _20819 + 164] = 0
                            call stor2.mem[_20746 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_20746 + 168 len _20819 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_20746 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_20746 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_20746 + idx + 232] = mem[_20746 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_20746 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _20746 + ceil32(return_data.size) + 165
                                mem[_20746 + 164] = return_data.size
                                mem[_20746 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_20746 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_20746 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_20746 + ceil32(return_data.size) + idx + 233] = mem[_20746 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_20746 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_20746 + 196] == bool(mem[_20746 + 196])
                                    if not mem[_20746 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 and 2 > -1 / ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768:
                            revert with 'NH{q', 17
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 < 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10:
                            revert with 'NH{q', 17
                        require stor9.length > 0
                        if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10:
                            if not stor9.length:
                                revert with 'NH{q', 18
                            if stor15 > -(0 / stor9.length) - 1:
                                revert with 'NH{q', 17
                            if stor15 + (0 / stor9.length) < stor15:
                                revert with 0, 'SafeMath: addition overflow'
                            stor15 += 0 / stor9.length
                            nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                            nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                            if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10) > 0:
                                if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10) - 1:
                                    revert with 'NH{q', 17
                                totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10)
                                _21134 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10)
                                _21281 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_21281 + 32] = mem[_21281 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _21134 + 164
                                mem[_21134 + 100] = 32
                                mem[_21134 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _21372 = mem[_21281]
                                s = 0
                                while s < _21372:
                                    mem[_21134 + s + 164] = mem[_21281 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_21372) > _21372:
                                    mem[_21134 + _21372 + 164] = 0
                                call stor2.mem[_21134 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_21134 + 168 len _21372 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_21134 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_21134 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_21134 + idx + 232] = mem[_21134 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_21134 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _21134 + ceil32(return_data.size) + 165
                                    mem[_21134 + 164] = return_data.size
                                    mem[_21134 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_21134 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_21134 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_21134 + ceil32(return_data.size) + idx + 233] = mem[_21134 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_21134 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_21134 + 196] == bool(mem[_21134 + 196])
                                        if not mem[_21134 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 and 0x100000000000000000000000000000000 > -1 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10:
                                revert with 'NH{q', 17
                            if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10:
                                revert with 'NH{q', 18
                            if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 << 128 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 != 0x100000000000000000000000000000000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not stor9.length:
                                revert with 'NH{q', 18
                            if stor15 > -(2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 << 128 / stor9.length) - 1:
                                revert with 'NH{q', 17
                            if stor15 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 << 128 / stor9.length) < stor15:
                                revert with 0, 'SafeMath: addition overflow'
                            stor15 += 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 << 128 / stor9.length
                            nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                            nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                            if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10) > 0:
                                if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10) - 1:
                                    revert with 'NH{q', 17
                                totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10)
                                _21308 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10)
                                _21441 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_21441 + 32] = mem[_21441 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _21308 + 164
                                mem[_21308 + 100] = 32
                                mem[_21308 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _21583 = mem[_21441]
                                s = 0
                                while s < _21583:
                                    mem[_21308 + s + 164] = mem[_21441 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_21583) <= _21583:
                                    call stor2.mem[_21308 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_21308 + 168 len _21583 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_21308 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_21308 + 168] = 32
                                            s = 0
                                            while s < 32:
                                                mem[_21308 + s + 232] = mem[_21308 + s + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_21308 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _21308 + ceil32(return_data.size) + 165
                                        mem[_21308 + 164] = return_data.size
                                        mem[_21308 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_21308 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_21308 + ceil32(return_data.size) + 169] = 32
                                            s = 0
                                            while s < 32:
                                                mem[_21308 + ceil32(return_data.size) + s + 233] = mem[_21308 + s + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_21308 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_21308 + 196] == bool(mem[_21308 + 196])
                                            if not mem[_21308 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_21308 + _21583 + 164] = 0
                                    call stor2.mem[_21308 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_21308 + 168 len _21583 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_21308 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_21308 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_21308 + idx + 232] = mem[_21308 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_21308 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _21308 + ceil32(return_data.size) + 165
                                        mem[_21308 + 164] = return_data.size
                                        mem[_21308 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_21308 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_21308 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_21308 + ceil32(return_data.size) + idx + 233] = mem[_21308 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_21308 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_21308 + 196] == bool(mem[_21308 + 196])
                                            if not mem[_21308 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_160 != 1:
                        if nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_160 != 2:
                            revert with 0, 'Token metadata is unreachable'
                        if block.timestamp < nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512:
                            revert with 'NH{q', 17
                        if block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512:
                            revert with 'NH{q', 17
                        if not stor14:
                            revert with 'NH{q', 18
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                        if (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor12) / stor14 > 0:
                            if totalFarmed > -((block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor12) / stor14) - 1:
                                revert with 'NH{q', 17
                            totalFarmed += (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor12) / stor14
                            _20742 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor12) / stor14
                            _20755 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_20755 + 32] = mem[_20755 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _20742 + 164
                            mem[_20742 + 100] = 32
                            mem[_20742 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _20790 = mem[_20755]
                            s = 0
                            while s < _20790:
                                mem[_20742 + s + 164] = mem[_20755 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_20790) > _20790:
                                mem[_20742 + _20790 + 164] = 0
                            call stor2.mem[_20742 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_20742 + 168 len _20790 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_20742 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_20742 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_20742 + idx + 232] = mem[_20742 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_20742 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _20742 + ceil32(return_data.size) + 165
                                mem[_20742 + 164] = return_data.size
                                mem[_20742 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_20742 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_20742 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_20742 + ceil32(return_data.size) + idx + 233] = mem[_20742 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_20742 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_20742 + 196] == bool(mem[_20742 + 196])
                                    if not mem[_20742 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require userInfo[address(msg.sender)].field_256 > 0
                        mem[0] = msg.sender
                        mem[32] = 6
                        if not stor15:
                            if stor16[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            require stor16[address(msg.sender)].field_0 >= 0
                            _20749 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20749] = 30
                            mem[_20749 + 32] = 'SafeMath: subtraction overflow'
                            if stor17[address(msg.sender)].field_0 > stor16[address(msg.sender)].field_128:
                                _20751 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_20751 + idx + 68] = mem[_20749 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_20751 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _20751 + -mem[64] + 100
                            if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0 > 0:
                                if stor17[address(msg.sender)].field_0 > -stor16[address(msg.sender)].field_128 + stor17[address(msg.sender)].field_0 - 1:
                                    revert with 'NH{q', 17
                                if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = msg.sender
                                mem[32] = 17
                                stor17[address(msg.sender)].field_0 = stor16[address(msg.sender)].field_128
                                _20900 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0
                                _21118 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_21118 + 32] = mem[_21118 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _20900 + 164
                                mem[_20900 + 100] = 32
                                mem[_20900 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _21258 = mem[_21118]
                                s = 0
                                while s < _21258:
                                    mem[_20900 + s + 164] = mem[_21118 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_21258) > _21258:
                                    mem[_20900 + _21258 + 164] = 0
                                call stor2.mem[_20900 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_20900 + 168 len _21258 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_20900 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_20900 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_20900 + idx + 232] = mem[_20900 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_20900 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _20900 + ceil32(return_data.size) + 165
                                    mem[_20900 + 164] = return_data.size
                                    mem[_20900 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_20900 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_20900 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_20900 + ceil32(return_data.size) + idx + 233] = mem[_20900 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_20900 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_20900 + 196] == bool(mem[_20900 + 196])
                                        if not mem[_20900 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if stor15 and userInfo[address(msg.sender)].field_256 > -1 / stor15:
                                revert with 'NH{q', 17
                            if not stor15:
                                revert with 'NH{q', 18
                            if stor15 * userInfo[address(msg.sender)].field_256 / stor15 != userInfo[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require stor15 * userInfo[address(msg.sender)].field_256 >= 0
                            if stor15 * userInfo[address(msg.sender)].field_256 >= 0 and stor16[address(msg.sender)].field_0 > (-1 * stor15 * userInfo[address(msg.sender)].field_256) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor15 * userInfo[address(msg.sender)].field_256 < 0 and stor16[address(msg.sender)].field_0 < (-1 * stor15 * userInfo[address(msg.sender)].field_256) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_0 < 0:
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                _20802 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20802] = 30
                                mem[_20802 + 32] = 'SafeMath: subtraction overflow'
                                if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                    _20818 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_20818 + idx + 68] = mem[_20802 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20818 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _20818 + -mem[64] + 100
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                    if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                        revert with 'NH{q', 17
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 17
                                    stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                    stor17[address(msg.sender)].field_128 = 0
                                    _21191 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                    _21315 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_21315 + 32] = mem[_21315 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _21191 + 164
                                    mem[_21191 + 100] = 32
                                    mem[_21191 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(stor2) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _21422 = mem[_21315]
                                    s = 0
                                    while s < _21422:
                                        mem[_21191 + s + 164] = mem[_21315 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_21422) > _21422:
                                        mem[_21191 + _21422 + 164] = 0
                                    call stor2.mem[_21191 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_21191 + 168 len _21422 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_21191 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_21191 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_21191 + idx + 232] = mem[_21191 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_21191 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _21191 + ceil32(return_data.size) + 165
                                        mem[_21191 + 164] = return_data.size
                                        mem[_21191 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_21191 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_21191 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_21191 + ceil32(return_data.size) + idx + 233] = mem[_21191 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_21191 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_21191 + 196] == bool(mem[_21191 + 196])
                                            if not mem[_21191 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= stor15 * userInfo[address(msg.sender)].field_256:
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                    _20791 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20791] = 30
                                    mem[_20791 + 32] = 'SafeMath: subtraction overflow'
                                    if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                        _20803 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_20803 + idx + 68] = mem[_20791 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_20803 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _20803 + -mem[64] + 100
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                        if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                            revert with 'NH{q', 17
                                        if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 17
                                        stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                        stor17[address(msg.sender)].field_128 = 0
                                        _21159 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                        _21292 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_21292 + 32] = mem[_21292 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _21159 + 164
                                        mem[_21159 + 100] = 32
                                        mem[_21159 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(stor2) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _21389 = mem[_21292]
                                        s = 0
                                        while s < _21389:
                                            mem[_21159 + s + 164] = mem[_21292 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_21389) > _21389:
                                            mem[_21159 + _21389 + 164] = 0
                                        call stor2.mem[_21159 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_21159 + 168 len _21389 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_21159 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_21159 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_21159 + idx + 232] = mem[_21159 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_21159 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _21159 + ceil32(return_data.size) + 165
                                            mem[_21159 + 164] = return_data.size
                                            mem[_21159 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_21159 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_21159 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_21159 + ceil32(return_data.size) + idx + 233] = mem[_21159 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_21159 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_21159 + 196] == bool(mem[_21159 + 196])
                                                if not mem[_21159 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    require stor16[address(msg.sender)].field_0 < 0
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                    _20812 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20812] = 30
                                    mem[_20812 + 32] = 'SafeMath: subtraction overflow'
                                    if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                        _20828 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_20828 + idx + 68] = mem[_20812 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_20828 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _20828 + -mem[64] + 100
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                        if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                            revert with 'NH{q', 17
                                        if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 17
                                        stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                        stor17[address(msg.sender)].field_128 = 0
                                        _21203 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                        _21327 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_21327 + 32] = mem[_21327 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _21203 + 164
                                        mem[_21203 + 100] = 32
                                        mem[_21203 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(stor2) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _21436 = mem[_21327]
                                        s = 0
                                        while s < _21436:
                                            mem[_21203 + s + 164] = mem[_21327 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_21436) > _21436:
                                            mem[_21203 + _21436 + 164] = 0
                                        call stor2.mem[_21203 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_21203 + 168 len _21436 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_21203 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_21203 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_21203 + idx + 232] = mem[_21203 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_21203 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _21203 + ceil32(return_data.size) + 165
                                            mem[_21203 + 164] = return_data.size
                                            mem[_21203 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_21203 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_21203 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_21203 + ceil32(return_data.size) + idx + 233] = mem[_21203 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_21203 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_21203 + 196] == bool(mem[_21203 + 196])
                                                if not mem[_21203 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < _16:
                _9936 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number)
                mem[mem[64] + 64] = tx.origin
                mem[mem[64] + 84] = block.timestamp
                mem[mem[64] + 116] = idx
                _10426 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _10428 = sha3(mem[_10426 + 32 len mem[_10426]])
                if not stor9.length:
                    revert with 'NH{q', 18
                if sha3(mem[_10426 + 32 len mem[_10426]]) % stor9.length >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = stor9[sha3(mem[_10426 + 32 len mem[_10426]]) % stor9.length]
                mem[32] = 7
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _10454 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[_9936 + 148] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[_9936 + 152] = this.address
                mem[_9936 + 184] = nftInfo[stor9[_10428 % stor9.length]].field_0
                mem[_9936 + 216] = _10454
                require ext_code.size(stor1)
                call stor1.0x42842e0e with:
                     gas gas_remaining wei
                    args address(this.address), nftInfo[stor9[_10428 % stor9.length]].field_0, _10454
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[0] = msg.sender
            mem[32] = 6
            idx = 0
            while idx < userInfo[address(msg.sender)].field_0:
                mem[0] = userInfo[address(msg.sender)][idx].field_0
                mem[32] = 7
                if nftInfo[stor6[address(msg.sender)][idx].field_0].field_0 != msg.sender:
                    revert with 0, 'Caller is not token staker'
                if not nftInfo[stor6[address(msg.sender)][idx].field_0].field_160:
                    if block.timestamp < nftInfo[stor6[address(msg.sender)][idx].field_0].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 and stor11 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx].field_0].field_512:
                        revert with 'NH{q', 17
                    if not stor14:
                        revert with 'NH{q', 18
                    if (block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14 < nftInfo[stor6[address(msg.sender)][idx].field_0].field_768:
                        revert with 'NH{q', 17
                    if stor9.length <= 0:
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 > 0:
                            if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - 1:
                                revert with 'NH{q', 17
                            totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768
                            _15915 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768
                            _15961 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_15961 + 32] = mem[_15961 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _15915 + 164
                            mem[_15915 + 100] = 32
                            mem[_15915 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _16062 = mem[_15961]
                            s = 0
                            while s < _16062:
                                mem[_15915 + s + 164] = mem[_15961 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_16062) > _16062:
                                mem[_15915 + _16062 + 164] = 0
                            call stor2.mem[_15915 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_15915 + 168 len _16062 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_15915 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_15915 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_15915 + idx + 232] = mem[_15915 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_15915 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _15915 + ceil32(return_data.size) + 165
                                mem[_15915 + 164] = return_data.size
                                mem[_15915 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_15915 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_15915 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_15915 + ceil32(return_data.size) + idx + 233] = mem[_15915 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_15915 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_15915 + 196] == bool(mem[_15915 + 196])
                                    if not mem[_15915 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 and 2 > -1 / ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768:
                            revert with 'NH{q', 17
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 < 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10:
                            revert with 'NH{q', 17
                        require stor9.length > 0
                        if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10:
                            if not stor9.length:
                                revert with 'NH{q', 18
                            if stor15 > -(0 / stor9.length) - 1:
                                revert with 'NH{q', 17
                            if stor15 + (0 / stor9.length) < stor15:
                                revert with 0, 'SafeMath: addition overflow'
                            stor15 += 0 / stor9.length
                            nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                            nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                            if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10) > 0:
                                if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10) - 1:
                                    revert with 'NH{q', 17
                                totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10)
                                _16690 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10)
                                _16985 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_16985 + 32] = mem[_16985 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _16690 + 164
                                mem[_16690 + 100] = 32
                                mem[_16690 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _17163 = mem[_16985]
                                s = 0
                                while s < _17163:
                                    mem[_16690 + s + 164] = mem[_16985 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_17163) > _17163:
                                    mem[_16690 + _17163 + 164] = 0
                                call stor2.mem[_16690 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_16690 + 168 len _17163 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_16690 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_16690 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_16690 + idx + 232] = mem[_16690 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_16690 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _16690 + ceil32(return_data.size) + 165
                                    mem[_16690 + 164] = return_data.size
                                    mem[_16690 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_16690 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_16690 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_16690 + ceil32(return_data.size) + idx + 233] = mem[_16690 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_16690 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_16690 + 196] == bool(mem[_16690 + 196])
                                        if not mem[_16690 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 and 0x100000000000000000000000000000000 > -1 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10:
                                revert with 'NH{q', 17
                            if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10:
                                revert with 'NH{q', 18
                            if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 << 128 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 != 0x100000000000000000000000000000000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not stor9.length:
                                revert with 'NH{q', 18
                            if stor15 > -(2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 << 128 / stor9.length) - 1:
                                revert with 'NH{q', 17
                            if stor15 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 << 128 / stor9.length) < stor15:
                                revert with 0, 'SafeMath: addition overflow'
                            stor15 += 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10 << 128 / stor9.length
                            nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                            nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                            if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10) > 0:
                                if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10) - 1:
                                    revert with 'NH{q', 17
                                totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10)
                                _17037 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 / 10)
                                _17306 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_17306 + 32] = mem[_17306 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _17037 + 164
                                mem[_17037 + 100] = 32
                                mem[_17037 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _17596 = mem[_17306]
                                s = 0
                                while s < _17596:
                                    mem[_17037 + s + 164] = mem[_17306 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_17596) <= _17596:
                                    call stor2.mem[_17037 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_17037 + 168 len _17596 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_17037 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_17037 + 168] = 32
                                            s = 0
                                            while s < 32:
                                                mem[_17037 + s + 232] = mem[_17037 + s + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_17037 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _17037 + ceil32(return_data.size) + 165
                                        mem[_17037 + 164] = return_data.size
                                        mem[_17037 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_17037 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_17037 + ceil32(return_data.size) + 169] = 32
                                            s = 0
                                            while s < 32:
                                                mem[_17037 + ceil32(return_data.size) + s + 233] = mem[_17037 + s + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_17037 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_17037 + 196] == bool(mem[_17037 + 196])
                                            if not mem[_17037 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_17037 + _17596 + 164] = 0
                                    call stor2.mem[_17037 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_17037 + 168 len _17596 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_17037 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_17037 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_17037 + idx + 232] = mem[_17037 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_17037 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _17037 + ceil32(return_data.size) + 165
                                        mem[_17037 + 164] = return_data.size
                                        mem[_17037 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_17037 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_17037 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_17037 + ceil32(return_data.size) + idx + 233] = mem[_17037 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_17037 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_17037 + 196] == bool(mem[_17037 + 196])
                                            if not mem[_17037 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if nftInfo[stor6[address(msg.sender)][idx].field_0].field_160 != 1:
                        if nftInfo[stor6[address(msg.sender)][idx].field_0].field_160 != 2:
                            revert with 0, 'Token metadata is unreachable'
                        if block.timestamp < nftInfo[stor6[address(msg.sender)][idx].field_0].field_512:
                            revert with 'NH{q', 17
                        if block.timestamp - nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx].field_0].field_512:
                            revert with 'NH{q', 17
                        if not stor14:
                            revert with 'NH{q', 18
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                        if (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor12) / stor14 > 0:
                            if totalFarmed > -((block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor12) / stor14) - 1:
                                revert with 'NH{q', 17
                            totalFarmed += (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor12) / stor14
                            _15906 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 * stor12) / stor14
                            _15936 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_15936 + 32] = mem[_15936 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _15906 + 164
                            mem[_15906 + 100] = 32
                            mem[_15906 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _16006 = mem[_15936]
                            s = 0
                            while s < _16006:
                                mem[_15906 + s + 164] = mem[_15936 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_16006) > _16006:
                                mem[_15906 + _16006 + 164] = 0
                            call stor2.mem[_15906 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_15906 + 168 len _16006 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_15906 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_15906 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_15906 + idx + 232] = mem[_15906 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_15906 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _15906 + ceil32(return_data.size) + 165
                                mem[_15906 + 164] = return_data.size
                                mem[_15906 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_15906 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_15906 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_15906 + ceil32(return_data.size) + idx + 233] = mem[_15906 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_15906 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_15906 + 196] == bool(mem[_15906 + 196])
                                    if not mem[_15906 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require userInfo[address(msg.sender)].field_256 > 0
                        mem[0] = msg.sender
                        mem[32] = 6
                        if not stor15:
                            if stor16[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            require stor16[address(msg.sender)].field_0 >= 0
                            _15920 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15920] = 30
                            mem[_15920 + 32] = 'SafeMath: subtraction overflow'
                            if stor17[address(msg.sender)].field_0 > stor16[address(msg.sender)].field_128:
                                _15926 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_15926 + idx + 68] = mem[_15920 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15926 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _15926 + -mem[64] + 100
                            if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0 > 0:
                                if stor17[address(msg.sender)].field_0 > -stor16[address(msg.sender)].field_128 + stor17[address(msg.sender)].field_0 - 1:
                                    revert with 'NH{q', 17
                                if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = msg.sender
                                mem[32] = 17
                                stor17[address(msg.sender)].field_0 = stor16[address(msg.sender)].field_128
                                _16230 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0
                                _16661 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_16661 + 32] = mem[_16661 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _16230 + 164
                                mem[_16230 + 100] = 32
                                mem[_16230 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _16936 = mem[_16661]
                                s = 0
                                while s < _16936:
                                    mem[_16230 + s + 164] = mem[_16661 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_16936) > _16936:
                                    mem[_16230 + _16936 + 164] = 0
                                call stor2.mem[_16230 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_16230 + 168 len _16936 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_16230 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_16230 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_16230 + idx + 232] = mem[_16230 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_16230 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _16230 + ceil32(return_data.size) + 165
                                    mem[_16230 + 164] = return_data.size
                                    mem[_16230 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_16230 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_16230 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_16230 + ceil32(return_data.size) + idx + 233] = mem[_16230 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_16230 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_16230 + 196] == bool(mem[_16230 + 196])
                                        if not mem[_16230 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if stor15 and userInfo[address(msg.sender)].field_256 > -1 / stor15:
                                revert with 'NH{q', 17
                            if not stor15:
                                revert with 'NH{q', 18
                            if stor15 * userInfo[address(msg.sender)].field_256 / stor15 != userInfo[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require stor15 * userInfo[address(msg.sender)].field_256 >= 0
                            if stor15 * userInfo[address(msg.sender)].field_256 >= 0 and stor16[address(msg.sender)].field_0 > (-1 * stor15 * userInfo[address(msg.sender)].field_256) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor15 * userInfo[address(msg.sender)].field_256 < 0 and stor16[address(msg.sender)].field_0 < (-1 * stor15 * userInfo[address(msg.sender)].field_256) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_0 < 0:
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                _16033 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_16033] = 30
                                mem[_16033 + 32] = 'SafeMath: subtraction overflow'
                                if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                    _16061 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_16061 + idx + 68] = mem[_16033 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_16061 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _16061 + -mem[64] + 100
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                    if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                        revert with 'NH{q', 17
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 17
                                    stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                    stor17[address(msg.sender)].field_128 = 0
                                    _16805 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                    _17056 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_17056 + 32] = mem[_17056 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _16805 + 164
                                    mem[_16805 + 100] = 32
                                    mem[_16805 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(stor2) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _17271 = mem[_17056]
                                    s = 0
                                    while s < _17271:
                                        mem[_16805 + s + 164] = mem[_17056 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_17271) > _17271:
                                        mem[_16805 + _17271 + 164] = 0
                                    call stor2.mem[_16805 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_16805 + 168 len _17271 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_16805 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_16805 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_16805 + idx + 232] = mem[_16805 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_16805 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _16805 + ceil32(return_data.size) + 165
                                        mem[_16805 + 164] = return_data.size
                                        mem[_16805 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_16805 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_16805 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_16805 + ceil32(return_data.size) + idx + 233] = mem[_16805 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_16805 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_16805 + 196] == bool(mem[_16805 + 196])
                                            if not mem[_16805 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= stor15 * userInfo[address(msg.sender)].field_256:
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                    _16007 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16007] = 30
                                    mem[_16007 + 32] = 'SafeMath: subtraction overflow'
                                    if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                        _16034 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_16034 + idx + 68] = mem[_16007 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_16034 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _16034 + -mem[64] + 100
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                        if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                            revert with 'NH{q', 17
                                        if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 17
                                        stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                        stor17[address(msg.sender)].field_128 = 0
                                        _16743 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                        _17013 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_17013 + 32] = mem[_17013 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _16743 + 164
                                        mem[_16743 + 100] = 32
                                        mem[_16743 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(stor2) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _17212 = mem[_17013]
                                        s = 0
                                        while s < _17212:
                                            mem[_16743 + s + 164] = mem[_17013 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_17212) > _17212:
                                            mem[_16743 + _17212 + 164] = 0
                                        call stor2.mem[_16743 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_16743 + 168 len _17212 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_16743 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_16743 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_16743 + idx + 232] = mem[_16743 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_16743 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _16743 + ceil32(return_data.size) + 165
                                            mem[_16743 + 164] = return_data.size
                                            mem[_16743 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_16743 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_16743 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_16743 + ceil32(return_data.size) + idx + 233] = mem[_16743 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_16743 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_16743 + 196] == bool(mem[_16743 + 196])
                                                if not mem[_16743 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    require stor16[address(msg.sender)].field_0 < 0
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                    _16044 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16044] = 30
                                    mem[_16044 + 32] = 'SafeMath: subtraction overflow'
                                    if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                        _16077 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_16077 + idx + 68] = mem[_16044 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_16077 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _16077 + -mem[64] + 100
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                        if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                            revert with 'NH{q', 17
                                        if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 17
                                        stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                        stor17[address(msg.sender)].field_128 = 0
                                        _16826 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                        _17077 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_17077 + 32] = mem[_17077 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _16826 + 164
                                        mem[_16826 + 100] = 32
                                        mem[_16826 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(stor2) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _17301 = mem[_17077]
                                        s = 0
                                        while s < _17301:
                                            mem[_16826 + s + 164] = mem[_17077 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_17301) > _17301:
                                            mem[_16826 + _17301 + 164] = 0
                                        call stor2.mem[_16826 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_16826 + 168 len _17301 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_16826 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_16826 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_16826 + idx + 232] = mem[_16826 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_16826 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _16826 + ceil32(return_data.size) + 165
                                            mem[_16826 + 164] = return_data.size
                                            mem[_16826 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_16826 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_16826 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_16826 + ceil32(return_data.size) + idx + 233] = mem[_16826 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_16826 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_16826 + 196] == bool(mem[_16826 + 196])
                                                if not mem[_16826 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx].field_0].field_768 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < userInfo[address(msg.sender)].field_256:
                mem[0] = userInfo[address(msg.sender)][idx + 1].field_0
                mem[32] = 7
                if nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_0 != msg.sender:
                    revert with 0, 'Caller is not token staker'
                if not nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_160:
                    if block.timestamp < nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 and stor11 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512:
                        revert with 'NH{q', 17
                    if not stor14:
                        revert with 'NH{q', 18
                    if (block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14 < nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768:
                        revert with 'NH{q', 17
                    if stor9.length <= 0:
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 > 0:
                            if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - 1:
                                revert with 'NH{q', 17
                            totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768
                            _20747 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768
                            _20771 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_20771 + 32] = mem[_20771 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _20747 + 164
                            mem[_20747 + 100] = 32
                            mem[_20747 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _20825 = mem[_20771]
                            s = 0
                            while s < _20825:
                                mem[_20747 + s + 164] = mem[_20771 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_20825) > _20825:
                                mem[_20747 + _20825 + 164] = 0
                            call stor2.mem[_20747 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_20747 + 168 len _20825 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_20747 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_20747 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_20747 + idx + 232] = mem[_20747 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_20747 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _20747 + ceil32(return_data.size) + 165
                                mem[_20747 + 164] = return_data.size
                                mem[_20747 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_20747 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_20747 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_20747 + ceil32(return_data.size) + idx + 233] = mem[_20747 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_20747 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_20747 + 196] == bool(mem[_20747 + 196])
                                    if not mem[_20747 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 and 2 > -1 / ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768:
                            revert with 'NH{q', 17
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 < 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10:
                            revert with 'NH{q', 17
                        require stor9.length > 0
                        if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10:
                            if not stor9.length:
                                revert with 'NH{q', 18
                            if stor15 > -(0 / stor9.length) - 1:
                                revert with 'NH{q', 17
                            if stor15 + (0 / stor9.length) < stor15:
                                revert with 0, 'SafeMath: addition overflow'
                            stor15 += 0 / stor9.length
                            nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                            nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                            if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10) > 0:
                                if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10) - 1:
                                    revert with 'NH{q', 17
                                totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10)
                                _21142 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10)
                                _21285 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_21285 + 32] = mem[_21285 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _21142 + 164
                                mem[_21142 + 100] = 32
                                mem[_21142 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _21376 = mem[_21285]
                                s = 0
                                while s < _21376:
                                    mem[_21142 + s + 164] = mem[_21285 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_21376) > _21376:
                                    mem[_21142 + _21376 + 164] = 0
                                call stor2.mem[_21142 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_21142 + 168 len _21376 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_21142 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_21142 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_21142 + idx + 232] = mem[_21142 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_21142 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _21142 + ceil32(return_data.size) + 165
                                    mem[_21142 + 164] = return_data.size
                                    mem[_21142 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_21142 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_21142 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_21142 + ceil32(return_data.size) + idx + 233] = mem[_21142 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_21142 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_21142 + 196] == bool(mem[_21142 + 196])
                                        if not mem[_21142 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 and 0x100000000000000000000000000000000 > -1 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10:
                                revert with 'NH{q', 17
                            if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10:
                                revert with 'NH{q', 18
                            if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 << 128 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 != 0x100000000000000000000000000000000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not stor9.length:
                                revert with 'NH{q', 18
                            if stor15 > -(2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 << 128 / stor9.length) - 1:
                                revert with 'NH{q', 17
                            if stor15 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 << 128 / stor9.length) < stor15:
                                revert with 0, 'SafeMath: addition overflow'
                            stor15 += 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10 << 128 / stor9.length
                            nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                            nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                            if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10) > 0:
                                if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10) - 1:
                                    revert with 'NH{q', 17
                                totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10)
                                _21314 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 / 10)
                                _21453 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_21453 + 32] = mem[_21453 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _21314 + 164
                                mem[_21314 + 100] = 32
                                mem[_21314 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _21595 = mem[_21453]
                                s = 0
                                while s < _21595:
                                    mem[_21314 + s + 164] = mem[_21453 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_21595) <= _21595:
                                    call stor2.mem[_21314 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_21314 + 168 len _21595 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_21314 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_21314 + 168] = 32
                                            s = 0
                                            while s < 32:
                                                mem[_21314 + s + 232] = mem[_21314 + s + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_21314 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _21314 + ceil32(return_data.size) + 165
                                        mem[_21314 + 164] = return_data.size
                                        mem[_21314 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_21314 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_21314 + ceil32(return_data.size) + 169] = 32
                                            s = 0
                                            while s < 32:
                                                mem[_21314 + ceil32(return_data.size) + s + 233] = mem[_21314 + s + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_21314 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_21314 + 196] == bool(mem[_21314 + 196])
                                            if not mem[_21314 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_21314 + _21595 + 164] = 0
                                    call stor2.mem[_21314 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_21314 + 168 len _21595 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_21314 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_21314 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_21314 + idx + 232] = mem[_21314 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_21314 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _21314 + ceil32(return_data.size) + 165
                                        mem[_21314 + 164] = return_data.size
                                        mem[_21314 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_21314 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_21314 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_21314 + ceil32(return_data.size) + idx + 233] = mem[_21314 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_21314 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_21314 + 196] == bool(mem[_21314 + 196])
                                            if not mem[_21314 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_160 != 1:
                        if nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_160 != 2:
                            revert with 0, 'Token metadata is unreachable'
                        if block.timestamp < nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512:
                            revert with 'NH{q', 17
                        if not stor14:
                            revert with 'NH{q', 18
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                        if (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor12) / stor14 > 0:
                            if totalFarmed > -((block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor12) / stor14) - 1:
                                revert with 'NH{q', 17
                            totalFarmed += (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor12) / stor14
                            _20743 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 * stor12) / stor14
                            _20758 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_20758 + 32] = mem[_20758 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _20743 + 164
                            mem[_20743 + 100] = 32
                            mem[_20743 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _20794 = mem[_20758]
                            s = 0
                            while s < _20794:
                                mem[_20743 + s + 164] = mem[_20758 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_20794) > _20794:
                                mem[_20743 + _20794 + 164] = 0
                            call stor2.mem[_20743 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_20743 + 168 len _20794 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_20743 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_20743 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_20743 + idx + 232] = mem[_20743 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_20743 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _20743 + ceil32(return_data.size) + 165
                                mem[_20743 + 164] = return_data.size
                                mem[_20743 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_20743 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_20743 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_20743 + ceil32(return_data.size) + idx + 233] = mem[_20743 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_20743 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_20743 + 196] == bool(mem[_20743 + 196])
                                    if not mem[_20743 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require userInfo[address(msg.sender)].field_256 > 0
                        mem[0] = msg.sender
                        mem[32] = 6
                        if not stor15:
                            if stor16[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            require stor16[address(msg.sender)].field_0 >= 0
                            _20750 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_20750] = 30
                            mem[_20750 + 32] = 'SafeMath: subtraction overflow'
                            if stor17[address(msg.sender)].field_0 > stor16[address(msg.sender)].field_128:
                                _20753 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_20753 + idx + 68] = mem[_20750 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_20753 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _20753 + -mem[64] + 100
                            if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0 > 0:
                                if stor17[address(msg.sender)].field_0 > -stor16[address(msg.sender)].field_128 + stor17[address(msg.sender)].field_0 - 1:
                                    revert with 'NH{q', 17
                                if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = msg.sender
                                mem[32] = 17
                                stor17[address(msg.sender)].field_0 = stor16[address(msg.sender)].field_128
                                _20912 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0
                                _21126 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_21126 + 32] = mem[_21126 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _20912 + 164
                                mem[_20912 + 100] = 32
                                mem[_20912 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _21266 = mem[_21126]
                                s = 0
                                while s < _21266:
                                    mem[_20912 + s + 164] = mem[_21126 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_21266) > _21266:
                                    mem[_20912 + _21266 + 164] = 0
                                call stor2.mem[_20912 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_20912 + 168 len _21266 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_20912 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_20912 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_20912 + idx + 232] = mem[_20912 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_20912 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _20912 + ceil32(return_data.size) + 165
                                    mem[_20912 + 164] = return_data.size
                                    mem[_20912 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_20912 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_20912 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_20912 + ceil32(return_data.size) + idx + 233] = mem[_20912 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_20912 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_20912 + 196] == bool(mem[_20912 + 196])
                                        if not mem[_20912 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if stor15 and userInfo[address(msg.sender)].field_256 > -1 / stor15:
                                revert with 'NH{q', 17
                            if not stor15:
                                revert with 'NH{q', 18
                            if stor15 * userInfo[address(msg.sender)].field_256 / stor15 != userInfo[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require stor15 * userInfo[address(msg.sender)].field_256 >= 0
                            if stor15 * userInfo[address(msg.sender)].field_256 >= 0 and stor16[address(msg.sender)].field_0 > (-1 * stor15 * userInfo[address(msg.sender)].field_256) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor15 * userInfo[address(msg.sender)].field_256 < 0 and stor16[address(msg.sender)].field_0 < (-1 * stor15 * userInfo[address(msg.sender)].field_256) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_0 < 0:
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                _20809 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_20809] = 30
                                mem[_20809 + 32] = 'SafeMath: subtraction overflow'
                                if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                    _20824 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_20824 + idx + 68] = mem[_20809 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_20824 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _20824 + -mem[64] + 100
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                    if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                        revert with 'NH{q', 17
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 17
                                    stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                    stor17[address(msg.sender)].field_128 = 0
                                    _21201 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                    _21323 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_21323 + 32] = mem[_21323 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _21201 + 164
                                    mem[_21201 + 100] = 32
                                    mem[_21201 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(stor2) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _21434 = mem[_21323]
                                    s = 0
                                    while s < _21434:
                                        mem[_21201 + s + 164] = mem[_21323 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_21434) > _21434:
                                        mem[_21201 + _21434 + 164] = 0
                                    call stor2.mem[_21201 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_21201 + 168 len _21434 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_21201 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_21201 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_21201 + idx + 232] = mem[_21201 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_21201 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _21201 + ceil32(return_data.size) + 165
                                        mem[_21201 + 164] = return_data.size
                                        mem[_21201 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_21201 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_21201 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_21201 + ceil32(return_data.size) + idx + 233] = mem[_21201 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_21201 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_21201 + 196] == bool(mem[_21201 + 196])
                                            if not mem[_21201 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= stor15 * userInfo[address(msg.sender)].field_256:
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                    _20795 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20795] = 30
                                    mem[_20795 + 32] = 'SafeMath: subtraction overflow'
                                    if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                        _20810 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_20810 + idx + 68] = mem[_20795 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_20810 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _20810 + -mem[64] + 100
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                        if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                            revert with 'NH{q', 17
                                        if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 17
                                        stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                        stor17[address(msg.sender)].field_128 = 0
                                        _21170 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                        _21299 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_21299 + 32] = mem[_21299 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _21170 + 164
                                        mem[_21170 + 100] = 32
                                        mem[_21170 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(stor2) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _21400 = mem[_21299]
                                        s = 0
                                        while s < _21400:
                                            mem[_21170 + s + 164] = mem[_21299 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_21400) > _21400:
                                            mem[_21170 + _21400 + 164] = 0
                                        call stor2.mem[_21170 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_21170 + 168 len _21400 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_21170 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_21170 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_21170 + idx + 232] = mem[_21170 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_21170 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _21170 + ceil32(return_data.size) + 165
                                            mem[_21170 + 164] = return_data.size
                                            mem[_21170 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_21170 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_21170 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_21170 + ceil32(return_data.size) + idx + 233] = mem[_21170 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_21170 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_21170 + 196] == bool(mem[_21170 + 196])
                                                if not mem[_21170 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    require stor16[address(msg.sender)].field_0 < 0
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                    _20816 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20816] = 30
                                    mem[_20816 + 32] = 'SafeMath: subtraction overflow'
                                    if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                        _20833 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_20833 + idx + 68] = mem[_20816 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_20833 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _20833 + -mem[64] + 100
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                        if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                            revert with 'NH{q', 17
                                        if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 17
                                        stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                        stor17[address(msg.sender)].field_128 = 0
                                        _21211 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                        _21335 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_21335 + 32] = mem[_21335 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _21211 + 164
                                        mem[_21211 + 100] = 32
                                        mem[_21211 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(stor2) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _21448 = mem[_21335]
                                        s = 0
                                        while s < _21448:
                                            mem[_21211 + s + 164] = mem[_21335 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_21448) > _21448:
                                            mem[_21211 + _21448 + 164] = 0
                                        call stor2.mem[_21211 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_21211 + 168 len _21448 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_21211 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_21211 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_21211 + idx + 232] = mem[_21211 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_21211 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _21211 + ceil32(return_data.size) + 165
                                            mem[_21211 + 164] = return_data.size
                                            mem[_21211 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_21211 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_21211 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_21211 + ceil32(return_data.size) + idx + 233] = mem[_21211 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_21211 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_21211 + 196] == bool(mem[_21211 + 196])
                                                if not mem[_21211 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 1].field_0].field_768 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < userInfo[address(msg.sender)].field_512:
                mem[0] = userInfo[address(msg.sender)][idx + 2].field_0
                mem[32] = 7
                if nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_0 != msg.sender:
                    revert with 0, 'Caller is not token staker'
                if not nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_160:
                    if block.timestamp < nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 and stor11 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512:
                        revert with 'NH{q', 17
                    if not stor14:
                        revert with 'NH{q', 18
                    if (block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14 < nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768:
                        revert with 'NH{q', 17
                    if stor9.length <= 0:
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 > 0:
                            if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - 1:
                                revert with 'NH{q', 17
                            totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768
                            _23566 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768
                            _23574 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_23574 + 32] = mem[_23574 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _23566 + 164
                            mem[_23566 + 100] = 32
                            mem[_23566 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _23593 = mem[_23574]
                            s = 0
                            while s < _23593:
                                mem[_23566 + s + 164] = mem[_23574 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_23593) > _23593:
                                mem[_23566 + _23593 + 164] = 0
                            call stor2.mem[_23566 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_23566 + 168 len _23593 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_23566 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_23566 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_23566 + idx + 232] = mem[_23566 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_23566 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _23566 + ceil32(return_data.size) + 165
                                mem[_23566 + 164] = return_data.size
                                mem[_23566 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_23566 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_23566 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_23566 + ceil32(return_data.size) + idx + 233] = mem[_23566 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_23566 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_23566 + 196] == bool(mem[_23566 + 196])
                                    if not mem[_23566 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 and 2 > -1 / ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768:
                            revert with 'NH{q', 17
                        if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 < 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10:
                            revert with 'NH{q', 17
                        require stor9.length > 0
                        if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10:
                            if not stor9.length:
                                revert with 'NH{q', 18
                            if stor15 > -(0 / stor9.length) - 1:
                                revert with 'NH{q', 17
                            if stor15 + (0 / stor9.length) < stor15:
                                revert with 0, 'SafeMath: addition overflow'
                            stor15 += 0 / stor9.length
                            nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                            nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                            if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10) > 0:
                                if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10) - 1:
                                    revert with 'NH{q', 17
                                totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10)
                                _23701 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10)
                                _23746 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_23746 + 32] = mem[_23746 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _23701 + 164
                                mem[_23701 + 100] = 32
                                mem[_23701 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _23777 = mem[_23746]
                                s = 0
                                while s < _23777:
                                    mem[_23701 + s + 164] = mem[_23746 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_23777) > _23777:
                                    mem[_23701 + _23777 + 164] = 0
                                call stor2.mem[_23701 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_23701 + 168 len _23777 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_23701 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_23701 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_23701 + idx + 232] = mem[_23701 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_23701 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _23701 + ceil32(return_data.size) + 165
                                    mem[_23701 + 164] = return_data.size
                                    mem[_23701 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_23701 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_23701 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_23701 + ceil32(return_data.size) + idx + 233] = mem[_23701 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_23701 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_23701 + 196] == bool(mem[_23701 + 196])
                                        if not mem[_23701 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 and 0x100000000000000000000000000000000 > -1 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10:
                                revert with 'NH{q', 17
                            if not 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10:
                                revert with 'NH{q', 18
                            if 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 << 128 / 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 != 0x100000000000000000000000000000000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not stor9.length:
                                revert with 'NH{q', 18
                            if stor15 > -(2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 << 128 / stor9.length) - 1:
                                revert with 'NH{q', 17
                            if stor15 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 << 128 / stor9.length) < stor15:
                                revert with 0, 'SafeMath: addition overflow'
                            stor15 += 2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10 << 128 / stor9.length
                            nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                            nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                            if ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10) > 0:
                                if totalFarmed > -((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 + (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10) - 1:
                                    revert with 'NH{q', 17
                                totalFarmed = totalFarmed + ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10)
                                _23758 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 - (2 * ((block.timestamp * stor11) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor11) / stor14) - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 / 10)
                                _23803 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_23803 + 32] = mem[_23803 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _23758 + 164
                                mem[_23758 + 100] = 32
                                mem[_23758 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _23849 = mem[_23803]
                                s = 0
                                while s < _23849:
                                    mem[_23758 + s + 164] = mem[_23803 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_23849) <= _23849:
                                    call stor2.mem[_23758 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_23758 + 168 len _23849 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_23758 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_23758 + 168] = 32
                                            s = 0
                                            while s < 32:
                                                mem[_23758 + s + 232] = mem[_23758 + s + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_23758 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _23758 + ceil32(return_data.size) + 165
                                        mem[_23758 + 164] = return_data.size
                                        mem[_23758 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_23758 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_23758 + ceil32(return_data.size) + 169] = 32
                                            s = 0
                                            while s < 32:
                                                mem[_23758 + ceil32(return_data.size) + s + 233] = mem[_23758 + s + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_23758 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_23758 + 196] == bool(mem[_23758 + 196])
                                            if not mem[_23758 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_23758 + _23849 + 164] = 0
                                    call stor2.mem[_23758 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_23758 + 168 len _23849 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_23758 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_23758 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_23758 + idx + 232] = mem[_23758 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_23758 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _23758 + ceil32(return_data.size) + 165
                                        mem[_23758 + 164] = return_data.size
                                        mem[_23758 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_23758 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_23758 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_23758 + ceil32(return_data.size) + idx + 233] = mem[_23758 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_23758 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_23758 + 196] == bool(mem[_23758 + 196])
                                            if not mem[_23758 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_160 != 1:
                        if nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_160 != 2:
                            revert with 0, 'Token metadata is unreachable'
                        if block.timestamp < nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512:
                            revert with 'NH{q', 17
                        if block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512:
                            revert with 'NH{q', 17
                        if not stor14:
                            revert with 'NH{q', 18
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                        if (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor12) / stor14 > 0:
                            if totalFarmed > -((block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor12) / stor14) - 1:
                                revert with 'NH{q', 17
                            totalFarmed += (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor12) / stor14
                            _23565 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (block.timestamp * stor12) - (nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 * stor12) / stor14
                            _23569 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_23569 + 32] = mem[_23569 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _23565 + 164
                            mem[_23565 + 100] = 32
                            mem[_23565 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(stor2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _23581 = mem[_23569]
                            s = 0
                            while s < _23581:
                                mem[_23565 + s + 164] = mem[_23569 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_23581) > _23581:
                                mem[_23565 + _23581 + 164] = 0
                            call stor2.mem[_23565 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_23565 + 168 len _23581 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_23565 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_23565 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_23565 + idx + 232] = mem[_23565 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_23565 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _23565 + ceil32(return_data.size) + 165
                                mem[_23565 + 164] = return_data.size
                                mem[_23565 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_23565 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_23565 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_23565 + ceil32(return_data.size) + idx + 233] = mem[_23565 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_23565 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_23565 + 196] == bool(mem[_23565 + 196])
                                    if not mem[_23565 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require userInfo[address(msg.sender)].field_256 > 0
                        mem[0] = msg.sender
                        mem[32] = 6
                        if not stor15:
                            if stor16[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            require stor16[address(msg.sender)].field_0 >= 0
                            _23567 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_23567] = 30
                            mem[_23567 + 32] = 'SafeMath: subtraction overflow'
                            if stor17[address(msg.sender)].field_0 > stor16[address(msg.sender)].field_128:
                                _23568 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_23568 + idx + 68] = mem[_23567 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_23568 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _23568 + -mem[64] + 100
                            if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0 > 0:
                                if stor17[address(msg.sender)].field_0 > -stor16[address(msg.sender)].field_128 + stor17[address(msg.sender)].field_0 - 1:
                                    revert with 'NH{q', 17
                                if stor16[address(msg.sender)].field_128 < stor17[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = msg.sender
                                mem[32] = 17
                                stor17[address(msg.sender)].field_0 = stor16[address(msg.sender)].field_128
                                _23624 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = stor16[address(msg.sender)].field_128 - stor17[address(msg.sender)].field_0
                                _23693 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_23693 + 32] = mem[_23693 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _23624 + 164
                                mem[_23624 + 100] = 32
                                mem[_23624 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(stor2) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _23740 = mem[_23693]
                                s = 0
                                while s < _23740:
                                    mem[_23624 + s + 164] = mem[_23693 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_23740) > _23740:
                                    mem[_23624 + _23740 + 164] = 0
                                call stor2.mem[_23624 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_23624 + 168 len _23740 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_23624 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_23624 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_23624 + idx + 232] = mem[_23624 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_23624 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _23624 + ceil32(return_data.size) + 165
                                    mem[_23624 + 164] = return_data.size
                                    mem[_23624 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_23624 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_23624 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_23624 + ceil32(return_data.size) + idx + 233] = mem[_23624 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_23624 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_23624 + 196] == bool(mem[_23624 + 196])
                                        if not mem[_23624 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if stor15 and userInfo[address(msg.sender)].field_256 > -1 / stor15:
                                revert with 'NH{q', 17
                            if not stor15:
                                revert with 'NH{q', 18
                            if stor15 * userInfo[address(msg.sender)].field_256 / stor15 != userInfo[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require stor15 * userInfo[address(msg.sender)].field_256 >= 0
                            if stor15 * userInfo[address(msg.sender)].field_256 >= 0 and stor16[address(msg.sender)].field_0 > (-1 * stor15 * userInfo[address(msg.sender)].field_256) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor15 * userInfo[address(msg.sender)].field_256 < 0 and stor16[address(msg.sender)].field_0 < (-1 * stor15 * userInfo[address(msg.sender)].field_256) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if stor16[address(msg.sender)].field_0 < 0:
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                _23587 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_23587] = 30
                                mem[_23587 + 32] = 'SafeMath: subtraction overflow'
                                if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                    _23592 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_23592 + idx + 68] = mem[_23587 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_23592 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _23592 + -mem[64] + 100
                                if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                    if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                        revert with 'NH{q', 17
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 17
                                    stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                    stor17[address(msg.sender)].field_128 = 0
                                    _23720 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                    _23759 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_23759 + 32] = mem[_23759 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _23720 + 164
                                    mem[_23720 + 100] = 32
                                    mem[_23720 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(stor2) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _23796 = mem[_23759]
                                    s = 0
                                    while s < _23796:
                                        mem[_23720 + s + 164] = mem[_23759 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_23796) > _23796:
                                        mem[_23720 + _23796 + 164] = 0
                                    call stor2.mem[_23720 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_23720 + 168 len _23796 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_23720 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_23720 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_23720 + idx + 232] = mem[_23720 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_23720 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _23720 + ceil32(return_data.size) + 165
                                        mem[_23720 + 164] = return_data.size
                                        mem[_23720 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_23720 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_23720 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_23720 + ceil32(return_data.size) + idx + 233] = mem[_23720 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_23720 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_23720 + 196] == bool(mem[_23720 + 196])
                                            if not mem[_23720 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= stor15 * userInfo[address(msg.sender)].field_256:
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                    _23582 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_23582] = 30
                                    mem[_23582 + 32] = 'SafeMath: subtraction overflow'
                                    if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                        _23588 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_23588 + idx + 68] = mem[_23582 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_23588 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _23588 + -mem[64] + 100
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                        if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                            revert with 'NH{q', 17
                                        if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 17
                                        stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                        stor17[address(msg.sender)].field_128 = 0
                                        _23709 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                        _23749 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_23749 + 32] = mem[_23749 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _23709 + 164
                                        mem[_23709 + 100] = 32
                                        mem[_23709 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(stor2) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _23782 = mem[_23749]
                                        s = 0
                                        while s < _23782:
                                            mem[_23709 + s + 164] = mem[_23749 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_23782) > _23782:
                                            mem[_23709 + _23782 + 164] = 0
                                        call stor2.mem[_23709 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_23709 + 168 len _23782 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_23709 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_23709 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_23709 + idx + 232] = mem[_23709 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_23709 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _23709 + ceil32(return_data.size) + 165
                                            mem[_23709 + 164] = return_data.size
                                            mem[_23709 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_23709 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_23709 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_23709 + ceil32(return_data.size) + idx + 233] = mem[_23709 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_23709 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_23709 + 196] == bool(mem[_23709 + 196])
                                                if not mem[_23709 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    require stor16[address(msg.sender)].field_0 < 0
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 < stor15 * userInfo[address(msg.sender)].field_256
                                    require (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0 >= 0
                                    _23590 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_23590] = 30
                                    mem[_23590 + 32] = 'SafeMath: subtraction overflow'
                                    if stor17[address(msg.sender)].field_0 > Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128:
                                        _23596 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_23596 + idx + 68] = mem[_23590 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_23596 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _23596 + -mem[64] + 100
                                    if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0 > 0:
                                        if stor17[address(msg.sender)].field_0 > -(Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) + stor17[address(msg.sender)].field_0 - 1:
                                            revert with 'NH{q', 17
                                        if Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128 < stor17[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 17
                                        stor17[address(msg.sender)].field_0 = Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128
                                        stor17[address(msg.sender)].field_128 = 0
                                        _23722 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = (Mask(128, 128, (stor15 * userInfo[address(msg.sender)].field_256) + stor16[address(msg.sender)].field_0) >> 128) - stor17[address(msg.sender)].field_0
                                        _23763 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_23763 + 32] = mem[_23763 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _23722 + 164
                                        mem[_23722 + 100] = 32
                                        mem[_23722 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(stor2) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _23798 = mem[_23763]
                                        s = 0
                                        while s < _23798:
                                            mem[_23722 + s + 164] = mem[_23763 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_23798) > _23798:
                                            mem[_23722 + _23798 + 164] = 0
                                        call stor2.mem[_23722 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_23722 + 168 len _23798 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_23722 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_23722 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_23722 + idx + 232] = mem[_23722 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_23722 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _23722 + ceil32(return_data.size) + 165
                                            mem[_23722 + 164] = return_data.size
                                            mem[_23722 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_23722 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_23722 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_23722 + ceil32(return_data.size) + idx + 233] = mem[_23722 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_23722 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_23722 + 196] == bool(mem[_23722 + 196])
                                                if not mem[_23722 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_512 = block.timestamp
                        nftInfo[stor6[address(msg.sender)][idx + 2].field_0].field_768 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}



}
