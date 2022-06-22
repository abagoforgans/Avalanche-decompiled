contract main {




// =====================  Runtime code  =====================


#
#  - unstake(uint256 arg1)
#  - sub_48bccc49(?)
#  - sub_5ac31717(?)
#  - harvestAll()
#  - harvest(uint256 arg1)
#
uint32 stor0;
address owner;
uint256 stor0;
address stor1;
uint256 totalFarmed;
mapping of struct nftInfo;
array of uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor14;
uint256 stor15;
uint256 stor16;
mapping of uint256 stor17;
mapping of uint256 stor18;

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

function startFarming(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        stor15 = block.timestamp
    else:
        stor15 = arg1
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
        if not stor15:
            return 0
        if stor15 > block.timestamp:
            return 0
        if not nftInfo[arg1].field_0:
            return 0
        if stor15 <= nftInfo[arg1].field_512:
            if block.timestamp < nftInfo[arg1].field_512:
                revert with 'NH{q', 17
            if block.timestamp - nftInfo[arg1].field_512 and stor11 > -1 / block.timestamp - nftInfo[arg1].field_512:
                revert with 'NH{q', 17
            if not stor14:
                revert with 'NH{q', 18
            if (block.timestamp * stor11) - (nftInfo[arg1].field_512 * stor11) / stor14 < nftInfo[arg1].field_768:
                revert with 'NH{q', 17
            return (((block.timestamp * stor11) - (nftInfo[arg1].field_512 * stor11) / stor14) - nftInfo[arg1].field_768)
        if block.timestamp < stor15:
            revert with 'NH{q', 17
        if block.timestamp - stor15 and stor11 > -1 / block.timestamp - stor15:
            revert with 'NH{q', 17
        if not stor14:
            revert with 'NH{q', 18
        if (block.timestamp * stor11) - (stor15 * stor11) / stor14 < nftInfo[arg1].field_768:
            revert with 'NH{q', 17
        return (((block.timestamp * stor11) - (stor15 * stor11) / stor14) - nftInfo[arg1].field_768)
    if nftInfo[arg1].field_160 != 1:
        if nftInfo[arg1].field_160 != 2:
            return 0
        if not stor15:
            return 0
        if stor15 > block.timestamp:
            return 0
        if not nftInfo[arg1].field_0:
            return 0
        if stor15 <= nftInfo[arg1].field_512:
            if block.timestamp < nftInfo[arg1].field_512:
                revert with 'NH{q', 17
            if block.timestamp - nftInfo[arg1].field_512 and stor12 > -1 / block.timestamp - nftInfo[arg1].field_512:
                revert with 'NH{q', 17
            if not stor14:
                revert with 'NH{q', 18
            return ((block.timestamp * stor12) - (nftInfo[arg1].field_512 * stor12) / stor14)
        if block.timestamp < stor15:
            revert with 'NH{q', 17
        if block.timestamp - stor15 and stor12 > -1 / block.timestamp - stor15:
            revert with 'NH{q', 17
        if not stor14:
            revert with 'NH{q', 18
        return ((block.timestamp * stor12) - (stor15 * stor12) / stor14)
    require stor16 >= 0
    if stor16 >= 0 and stor17[arg1] > -stor16 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if stor16 < 0 and stor17[arg1] < -stor16 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if stor17[arg1] < 0:
        require stor16 + stor17[arg1] < stor16
    else:
        if stor16 + stor17[arg1] < stor16:
            require stor17[arg1] < 0
            require stor16 + stor17[arg1] < stor16
    require stor16 + stor17[arg1] >= 0
    if stor18[arg1] > Mask(128, 128, stor16 + stor17[arg1]) >> 128:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if Mask(128, 128, stor16 + stor17[arg1]) >> 128 < stor18[arg1]:
        revert with 'NH{q', 17
    return ((Mask(128, 128, stor16 + stor17[arg1]) >> 128) - stor18[arg1])
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor9.length <= 0:
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
                require stor16 >= 0
                if stor16 >= 0 and stor17[arg1] < stor16 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if stor16 < 0 and stor17[arg1] > stor16 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if stor16 < 0:
                    require stor17[arg1] - stor16 > stor17[arg1]
                else:
                    if stor17[arg1] - stor16 > stor17[arg1]:
                        require stor16 < 0
                        require stor17[arg1] - stor16 > stor17[arg1]
                stor17[arg1] -= stor16
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
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_93] == mem[_93 + 31 len 1]
            require mem[_93 + 32] == mem[_93 + 63 len 1]
            require ext_code.size(stor1)
            call stor1.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_93 + 31 len 1]:
                userInfo[address(msg.sender)].field_0++
                userInfo[address(msg.sender)][userInfo[address(msg.sender)].field_0].field_0 = arg1
                stor8.length++
                stor8[stor8.length] = arg1
            else:
                if mem[_93 + 31 len 1] != 1:
                    if mem[_93 + 31 len 1] != 2:
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
                    require stor16 >= 0
                    if stor16 >= 0 and stor17[arg1] < stor16 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if stor16 < 0 and stor17[arg1] > stor16 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if stor16 < 0:
                        require stor17[arg1] - stor16 > stor17[arg1]
                    else:
                        if stor17[arg1] - stor16 > stor17[arg1]:
                            require stor16 < 0
                            require stor17[arg1] - stor16 > stor17[arg1]
                    stor17[arg1] -= stor16
                    nftInfo[arg1].field_1024 = 0
                    nftInfo[arg1].field_1280 = 0
            nftInfo[arg1].field_0 = msg.sender
            nftInfo[arg1].field_160 = mem[_93 + 31 len 1]
        else:
            idx = 0
            while idx < _11:
                _138 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number)
                mem[mem[64] + 64] = tx.origin
                mem[mem[64] + 84] = block.timestamp
                mem[mem[64] + 116] = idx
                _147 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _149 = sha3(mem[_147 + 32 len mem[_147]])
                if not stor9.length:
                    revert with 'NH{q', 18
                if sha3(mem[_147 + 32 len mem[_147]]) % stor9.length >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = stor9[sha3(mem[_147 + 32 len mem[_147]]) % stor9.length]
                mem[32] = 7
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _153 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[_138 + 148] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[_138 + 152] = this.address
                mem[_138 + 184] = nftInfo[stor9[_149 % stor9.length]].field_0
                mem[_138 + 216] = _153
                require ext_code.size(stor1)
                call stor1.0x42842e0e with:
                     gas gas_remaining wei
                    args address(this.address), nftInfo[stor9[_149 % stor9.length]].field_0, _153
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
            _143 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_143] == mem[_143 + 31 len 1]
            require mem[_143 + 32] == mem[_143 + 63 len 1]
            require ext_code.size(stor1)
            call stor1.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_143 + 31 len 1]:
                userInfo[address(msg.sender)].field_0++
                userInfo[address(msg.sender)][userInfo[address(msg.sender)].field_0].field_0 = arg1
                stor8.length++
                stor8[stor8.length] = arg1
            else:
                if mem[_143 + 31 len 1] != 1:
                    if mem[_143 + 31 len 1] != 2:
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
                    require stor16 >= 0
                    if stor16 >= 0 and stor17[arg1] < stor16 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if stor16 < 0 and stor17[arg1] > stor16 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if stor16 < 0:
                        require stor17[arg1] - stor16 > stor17[arg1]
                    else:
                        if stor17[arg1] - stor16 > stor17[arg1]:
                            require stor16 < 0
                            require stor17[arg1] - stor16 > stor17[arg1]
                    stor17[arg1] -= stor16
                    nftInfo[arg1].field_1024 = 0
                    nftInfo[arg1].field_1280 = 0
            nftInfo[arg1].field_0 = msg.sender
            nftInfo[arg1].field_160 = mem[_143 + 31 len 1]
    nftInfo[arg1].field_256 = block.timestamp
    nftInfo[arg1].field_512 = block.timestamp
}

function sub_a9c69553(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor9.length <= 0:
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
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _94 = mem[_90]
            require mem[_90] == mem[_90 + 31 len 1]
            require mem[_90 + 32] == mem[_90 + 63 len 1]
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
            if not uint8(_94):
                userInfo[address(msg.sender)].field_0++
                userInfo[address(msg.sender)][userInfo[address(msg.sender)].field_0].field_0 = cd[((32 * idx) + cd[4] + 36)]
                stor8.length++
                mem[0] = 8
                stor8[stor8.length] = cd[((32 * idx) + cd[4] + 36)]
            else:
                if uint8(_94) != 1:
                    if uint8(_94) != 2:
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
                    require stor16 >= 0
                    if stor16 >= 0 and stor17[cd[((32 * idx) + cd[4] + 36)]] < stor16 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if stor16 < 0 and stor17[cd[((32 * idx) + cd[4] + 36)]] > stor16 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if stor16 < 0:
                        require stor17[cd[((32 * idx) + cd[4] + 36)]] - stor16 > stor17[cd[((32 * idx) + cd[4] + 36)]]
                    else:
                        if stor17[cd[((32 * idx) + cd[4] + 36)]] - stor16 > stor17[cd[((32 * idx) + cd[4] + 36)]]:
                            require stor16 < 0
                            require stor17[cd[((32 * idx) + cd[4] + 36)]] - stor16 > stor17[cd[((32 * idx) + cd[4] + 36)]]
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 17
                    stor17[cd[((32 * idx) + cd[4] + 36)]] -= stor16
                    nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = 0
                    nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = 0
            nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = msg.sender
            nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_160 = uint8(_94)
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
                _167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _168 = mem[_167]
                require mem[_167] == mem[_167 + 31 len 1]
                require mem[_167 + 32] == mem[_167 + 63 len 1]
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
                if not uint8(_168):
                    userInfo[address(msg.sender)].field_0++
                    userInfo[address(msg.sender)][userInfo[address(msg.sender)].field_0].field_0 = cd[((32 * idx) + cd[4] + 36)]
                    stor8.length++
                    mem[0] = 8
                    stor8[stor8.length] = cd[((32 * idx) + cd[4] + 36)]
                else:
                    if uint8(_168) != 1:
                        if uint8(_168) != 2:
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
                        require stor16 >= 0
                        if stor16 >= 0 and stor17[cd[((32 * idx) + cd[4] + 36)]] < stor16 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if stor16 < 0 and stor17[cd[((32 * idx) + cd[4] + 36)]] > stor16 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor16 < 0:
                            require stor17[cd[((32 * idx) + cd[4] + 36)]] - stor16 > stor17[cd[((32 * idx) + cd[4] + 36)]]
                        else:
                            if stor17[cd[((32 * idx) + cd[4] + 36)]] - stor16 > stor17[cd[((32 * idx) + cd[4] + 36)]]:
                                require stor16 < 0
                                require stor17[cd[((32 * idx) + cd[4] + 36)]] - stor16 > stor17[cd[((32 * idx) + cd[4] + 36)]]
                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 17
                        stor17[cd[((32 * idx) + cd[4] + 36)]] -= stor16
                        nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = 0
                        nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = 0
                nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = msg.sender
                nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_160 = uint8(_168)
                nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = block.timestamp
                nftInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < _10:
                _159 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number)
                mem[mem[64] + 64] = tx.origin
                mem[mem[64] + 84] = block.timestamp
                mem[mem[64] + 116] = idx
                _175 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _177 = sha3(mem[_175 + 32 len mem[_175]])
                if not stor9.length:
                    revert with 'NH{q', 18
                if sha3(mem[_175 + 32 len mem[_175]]) % stor9.length >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = stor9[sha3(mem[_175 + 32 len mem[_175]]) % stor9.length]
                mem[32] = 7
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _182 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[_159 + 148] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[_159 + 152] = this.address
                mem[_159 + 184] = nftInfo[stor9[_177 % stor9.length]].field_0
                mem[_159 + 216] = _182
                require ext_code.size(stor1)
                call stor1.0x42842e0e with:
                     gas gas_remaining wei
                    args address(this.address), nftInfo[stor9[_177 % stor9.length]].field_0, _182
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
                _215 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _216 = mem[_215]
                require mem[_215] == mem[_215 + 31 len 1]
                require mem[_215 + 32] == mem[_215 + 63 len 1]
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
                if not uint8(_216):
                    userInfo[address(msg.sender)].field_0++
                    userInfo[address(msg.sender)][userInfo[address(msg.sender)].field_0].field_0 = cd[((32 * _10) + cd[4] + 36)]
                    stor8.length++
                    mem[0] = 8
                    stor8[stor8.length] = cd[((32 * _10) + cd[4] + 36)]
                else:
                    if uint8(_216) != 1:
                        if uint8(_216) != 2:
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
                        require stor16 >= 0
                        if stor16 >= 0 and stor17[cd[((32 * _10) + cd[4] + 36)]] < stor16 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if stor16 < 0 and stor17[cd[((32 * _10) + cd[4] + 36)]] > stor16 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor16 < 0:
                            require stor17[cd[((32 * _10) + cd[4] + 36)]] - stor16 > stor17[cd[((32 * _10) + cd[4] + 36)]]
                        else:
                            if stor17[cd[((32 * _10) + cd[4] + 36)]] - stor16 > stor17[cd[((32 * _10) + cd[4] + 36)]]:
                                require stor16 < 0
                                require stor17[cd[((32 * _10) + cd[4] + 36)]] - stor16 > stor17[cd[((32 * _10) + cd[4] + 36)]]
                        mem[0] = cd[((32 * _10) + cd[4] + 36)]
                        mem[32] = 17
                        stor17[cd[((32 * _10) + cd[4] + 36)]] -= stor16
                        nftInfo[cd[((32 * _10) + cd[4] + 36)]].field_1024 = 0
                        nftInfo[cd[((32 * _10) + cd[4] + 36)]].field_1280 = 0
                nftInfo[cd[((32 * _10) + cd[4] + 36)]].field_0 = msg.sender
                nftInfo[cd[((32 * _10) + cd[4] + 36)]].field_160 = uint8(_216)
                nftInfo[cd[((32 * _10) + cd[4] + 36)]].field_256 = block.timestamp
                nftInfo[cd[((32 * _10) + cd[4] + 36)]].field_512 = block.timestamp
                if _10 == -1:
                    revert with 'NH{q', 17
                s = _10 + 1
                continue 
}

function pendingReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 6
    if userInfo[address(arg1)].field_0 <= 0:
        if userInfo[address(arg1)].field_256 <= 0:
            if userInfo[address(arg1)].field_512 > 0:
                idx = 0
                while idx < userInfo[address(arg1)].field_512:
                    mem[0] = sha3(address(arg1), 6) + 2
                    if stor15:
                        if stor15 <= block.timestamp:
                            mem[0] = userInfo[address(arg1)][idx + 2].field_0
                            mem[32] = 7
                            if nftInfo[stor6[address(arg1)][idx + 2].field_0].field_0:
                                if stor15 <= nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                                    if block.timestamp < nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                                        revert with 'NH{q', 17
                                    if block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                                        revert with 'NH{q', 17
                                    if not stor14:
                                        revert with 'NH{q', 18
                                    if 0 > -((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if block.timestamp < stor15:
                                        revert with 'NH{q', 17
                                    if block.timestamp - stor15 and stor12 > -1 / block.timestamp - stor15:
                                        revert with 'NH{q', 17
                                    if not stor14:
                                        revert with 'NH{q', 18
                                    if 0 > -((block.timestamp * stor12) - (stor15 * stor12) / stor14) - 1:
                                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                return 0
            else:
                return 0
        idx = 0
        s = 0
        while idx < userInfo[address(arg1)].field_256:
            mem[0] = userInfo[address(arg1)][idx + 1].field_0
            mem[32] = 17
            require stor16 >= 0
            if stor16 >= 0 and stor17[stor6[address(arg1)][idx + 1].field_0] > -stor16 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if stor16 < 0 and stor17[stor6[address(arg1)][idx + 1].field_0] < -stor16 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if stor17[stor6[address(arg1)][idx + 1].field_0] < 0:
                require stor16 + stor17[stor6[address(arg1)][idx + 1].field_0] < stor16
                require stor16 + stor17[stor6[address(arg1)][idx + 1].field_0] >= 0
                _101 = mem[64]
                mem[64] = mem[64] + 64
                mem[_101] = 30
                mem[_101 + 32] = 'SafeMath: subtraction overflow'
                if stor18[stor6[address(arg1)][idx + 1].field_0] <= Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128:
                    if Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128 < stor18[stor6[address(arg1)][idx + 1].field_0]:
                        revert with 'NH{q', 17
                    if s > -(Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128) + stor18[stor6[address(arg1)][idx + 1].field_0] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128) - stor18[stor6[address(arg1)][idx + 1].field_0]
                    continue 
                _104 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_104 + idx + 68] = mem[_101 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_104 + 98] = 0
                revert with memory
                  from mem[64]
                   len _104 + -mem[64] + 100
            if stor16 + stor17[stor6[address(arg1)][idx + 1].field_0] >= stor16:
                require stor16 + stor17[stor6[address(arg1)][idx + 1].field_0] >= 0
                _100 = mem[64]
                mem[64] = mem[64] + 64
                mem[_100] = 30
                mem[_100 + 32] = 'SafeMath: subtraction overflow'
                if stor18[stor6[address(arg1)][idx + 1].field_0] <= Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128:
                    if Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128 < stor18[stor6[address(arg1)][idx + 1].field_0]:
                        revert with 'NH{q', 17
                    if s > -(Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128) + stor18[stor6[address(arg1)][idx + 1].field_0] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128) - stor18[stor6[address(arg1)][idx + 1].field_0]
                    continue 
                _102 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_102 + idx + 68] = mem[_100 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_102 + 98] = 0
                revert with memory
                  from mem[64]
                   len _102 + -mem[64] + 100
            require stor17[stor6[address(arg1)][idx + 1].field_0] < 0
            require stor16 + stor17[stor6[address(arg1)][idx + 1].field_0] < stor16
            require stor16 + stor17[stor6[address(arg1)][idx + 1].field_0] >= 0
            _103 = mem[64]
            mem[64] = mem[64] + 64
            mem[_103] = 30
            mem[_103 + 32] = 'SafeMath: subtraction overflow'
            if stor18[stor6[address(arg1)][idx + 1].field_0] <= Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128:
                if Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128 < stor18[stor6[address(arg1)][idx + 1].field_0]:
                    revert with 'NH{q', 17
                if s > -(Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128) + stor18[stor6[address(arg1)][idx + 1].field_0] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128) - stor18[stor6[address(arg1)][idx + 1].field_0]
                continue 
            _107 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_107 + idx + 68] = mem[_103 + idx + 32]
                idx = idx + 32
                continue 
            mem[_107 + 98] = 0
            revert with memory
              from mem[64]
               len _107 + -mem[64] + 100
    else:
        idx = 0
        while idx < userInfo[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 6)
            if stor15:
                if stor15 <= block.timestamp:
                    mem[0] = userInfo[address(arg1)][idx].field_0
                    mem[32] = 7
                    if nftInfo[stor6[address(arg1)][idx].field_0].field_0:
                        if stor15 <= nftInfo[stor6[address(arg1)][idx].field_0].field_512:
                            if block.timestamp < nftInfo[stor6[address(arg1)][idx].field_0].field_512:
                                revert with 'NH{q', 17
                            if block.timestamp - nftInfo[stor6[address(arg1)][idx].field_0].field_512 and stor11 > -1 / block.timestamp - nftInfo[stor6[address(arg1)][idx].field_0].field_512:
                                revert with 'NH{q', 17
                            if not stor14:
                                revert with 'NH{q', 18
                            if (block.timestamp * stor11) - (nftInfo[stor6[address(arg1)][idx].field_0].field_512 * stor11) / stor14 < nftInfo[stor6[address(arg1)][idx].field_0].field_768:
                                revert with 'NH{q', 17
                            if 0 > -((block.timestamp * stor11) - (nftInfo[stor6[address(arg1)][idx].field_0].field_512 * stor11) / stor14) + nftInfo[stor6[address(arg1)][idx].field_0].field_768 - 1:
                                revert with 'NH{q', 17
                        else:
                            if block.timestamp < stor15:
                                revert with 'NH{q', 17
                            if block.timestamp - stor15 and stor11 > -1 / block.timestamp - stor15:
                                revert with 'NH{q', 17
                            if not stor14:
                                revert with 'NH{q', 18
                            if (block.timestamp * stor11) - (stor15 * stor11) / stor14 < nftInfo[stor6[address(arg1)][idx].field_0].field_768:
                                revert with 'NH{q', 17
                            if 0 > -((block.timestamp * stor11) - (stor15 * stor11) / stor14) + nftInfo[stor6[address(arg1)][idx].field_0].field_768 - 1:
                                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if userInfo[address(arg1)].field_256 <= 0:
            if userInfo[address(arg1)].field_512 > 0:
                idx = 0
                while idx < userInfo[address(arg1)].field_512:
                    mem[0] = sha3(address(arg1), 6) + 2
                    if stor15:
                        if stor15 <= block.timestamp:
                            mem[0] = userInfo[address(arg1)][idx + 2].field_0
                            mem[32] = 7
                            if nftInfo[stor6[address(arg1)][idx + 2].field_0].field_0:
                                if stor15 <= nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                                    if block.timestamp < nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                                        revert with 'NH{q', 17
                                    if block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                                        revert with 'NH{q', 17
                                    if not stor14:
                                        revert with 'NH{q', 18
                                    if 0 > -((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if block.timestamp < stor15:
                                        revert with 'NH{q', 17
                                    if block.timestamp - stor15 and stor12 > -1 / block.timestamp - stor15:
                                        revert with 'NH{q', 17
                                    if not stor14:
                                        revert with 'NH{q', 18
                                    if 0 > -((block.timestamp * stor12) - (stor15 * stor12) / stor14) - 1:
                                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                return 0
            else:
                return 0
        idx = 0
        s = 0
        while idx < userInfo[address(arg1)].field_256:
            mem[0] = userInfo[address(arg1)][idx + 1].field_0
            mem[32] = 17
            require stor16 >= 0
            if stor16 >= 0 and stor17[stor6[address(arg1)][idx + 1].field_0] > -stor16 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if stor16 < 0 and stor17[stor6[address(arg1)][idx + 1].field_0] < -stor16 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if stor17[stor6[address(arg1)][idx + 1].field_0] < 0:
                require stor16 + stor17[stor6[address(arg1)][idx + 1].field_0] < stor16
                require stor16 + stor17[stor6[address(arg1)][idx + 1].field_0] >= 0
                _163 = mem[64]
                mem[64] = mem[64] + 64
                mem[_163] = 30
                mem[_163 + 32] = 'SafeMath: subtraction overflow'
                if stor18[stor6[address(arg1)][idx + 1].field_0] <= Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128:
                    if Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128 < stor18[stor6[address(arg1)][idx + 1].field_0]:
                        revert with 'NH{q', 17
                    if s > -(Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128) + stor18[stor6[address(arg1)][idx + 1].field_0] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128) - stor18[stor6[address(arg1)][idx + 1].field_0]
                    continue 
                _166 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_166 + idx + 68] = mem[_163 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_166 + 98] = 0
                revert with memory
                  from mem[64]
                   len _166 + -mem[64] + 100
            if stor16 + stor17[stor6[address(arg1)][idx + 1].field_0] >= stor16:
                require stor16 + stor17[stor6[address(arg1)][idx + 1].field_0] >= 0
                _162 = mem[64]
                mem[64] = mem[64] + 64
                mem[_162] = 30
                mem[_162 + 32] = 'SafeMath: subtraction overflow'
                if stor18[stor6[address(arg1)][idx + 1].field_0] <= Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128:
                    if Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128 < stor18[stor6[address(arg1)][idx + 1].field_0]:
                        revert with 'NH{q', 17
                    if s > -(Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128) + stor18[stor6[address(arg1)][idx + 1].field_0] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128) - stor18[stor6[address(arg1)][idx + 1].field_0]
                    continue 
                _164 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_164 + idx + 68] = mem[_162 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_164 + 98] = 0
                revert with memory
                  from mem[64]
                   len _164 + -mem[64] + 100
            require stor17[stor6[address(arg1)][idx + 1].field_0] < 0
            require stor16 + stor17[stor6[address(arg1)][idx + 1].field_0] < stor16
            require stor16 + stor17[stor6[address(arg1)][idx + 1].field_0] >= 0
            _165 = mem[64]
            mem[64] = mem[64] + 64
            mem[_165] = 30
            mem[_165 + 32] = 'SafeMath: subtraction overflow'
            if stor18[stor6[address(arg1)][idx + 1].field_0] <= Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128:
                if Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128 < stor18[stor6[address(arg1)][idx + 1].field_0]:
                    revert with 'NH{q', 17
                if s > -(Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128) + stor18[stor6[address(arg1)][idx + 1].field_0] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (Mask(128, 128, stor16 + stor17[stor6[address(arg1)][idx + 1].field_0]) >> 128) - stor18[stor6[address(arg1)][idx + 1].field_0]
                continue 
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_168 + idx + 68] = mem[_165 + idx + 32]
                idx = idx + 32
                continue 
            mem[_168 + 98] = 0
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
    if userInfo[address(arg1)].field_512 > 0:
        idx = 0
        while idx < userInfo[address(arg1)].field_512:
            mem[0] = sha3(address(arg1), 6) + 2
            if not stor15:
                if s > -1:
                    revert with 'NH{q', 17
            else:
                if stor15 > block.timestamp:
                    if s > -1:
                        revert with 'NH{q', 17
                else:
                    mem[0] = userInfo[address(arg1)][idx + 2].field_0
                    mem[32] = 7
                    if not nftInfo[stor6[address(arg1)][idx + 2].field_0].field_0:
                        if s > -1:
                            revert with 'NH{q', 17
                    else:
                        if stor15 <= nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                            if block.timestamp < nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                                revert with 'NH{q', 17
                            if block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 and stor12 > -1 / block.timestamp - nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512:
                                revert with 'NH{q', 17
                            if not stor14:
                                revert with 'NH{q', 18
                            if s > -((block.timestamp * stor12) - (nftInfo[stor6[address(arg1)][idx + 2].field_0].field_512 * stor12) / stor14) - 1:
                                revert with 'NH{q', 17
                        else:
                            if block.timestamp < stor15:
                                revert with 'NH{q', 17
                            if block.timestamp - stor15 and stor12 > -1 / block.timestamp - stor15:
                                revert with 'NH{q', 17
                            if not stor14:
                                revert with 'NH{q', 18
                            if s > -((block.timestamp * stor12) - (stor15 * stor12) / stor14) - 1:
                                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    return s
}



}
