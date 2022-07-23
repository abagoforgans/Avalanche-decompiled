contract main {




// =====================  Runtime code  =====================


const sub_b1e7646f(?) = 100 * 10^18


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address sub_5757d173Address;
address stor2;
mapping of uint256 sub_c3bf1515;
array of struct tokenStaked;
uint256 totalTokenStaked;
uint256 sub_97d15988;
uint256 sub_f995c03f;
uint256 lastClaimTimestamp;

function TokenStaked(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < tokenStaked[arg1].field_0
    return tokenStaked[arg1][arg2].field_0, tokenStaked[arg1][arg2].field_0, tokenStaked[arg1][arg2].field_96
}

function totalTokenStaked() payable {
    return totalTokenStaked
}

function sub_5757d173(?) payable {
    return sub_5757d173Address
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function lastClaimTimestamp() payable {
    return lastClaimTimestamp
}

function owner() payable {
    return owner
}

function sub_97d15988(?) payable {
    return sub_97d15988
}

function sub_c3bf1515(?) payable {
    require calldata.size - 4 >= 32
    return sub_c3bf1515[arg1]
}

function sub_f995c03f(?) payable {
    return sub_f995c03f
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_b92f0f20(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_97d15988 = arg1
}

function sub_7f28452e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = address(arg1)
}

function sub_c5d6cb44(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5757d173Address = address(arg1)
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot send tokens to this contact directly'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_94b2cec6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 4
    mem[64] = (32 * tokenStaked[address(arg1)].field_0) + 128
    mem[96] = tokenStaked[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < tokenStaked[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _13 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13] = tokenStaked[address(arg1)][idx].field_0
        mem[_13 + 32] = tokenStaked[address(arg1)][idx].field_16
        mem[_13 + 64] = tokenStaked[address(arg1)][idx].field_96
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _15:
        _21 = mem[s]
        mem[t] = mem[mem[s] + 30 len 2]
        mem[t + 32] = mem[_21 + 54 len 10]
        mem[t + 64] = mem[_21 + 76 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _14 + (96 * _15) + -mem[64] + 64
}

function sub_008f1bee(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = 3
        if sub_c3bf1515[cd[((32 * idx) + cd[36] + 36)] << 240] >= tokenStaked[address(cd[4])].field_0:
            revert with 0, 50
        mem[0] = sha3(address(cd[4]), 4)
        _12 = mem[64]
        mem[64] = mem[64] + 96
        mem[_12] = tokenStaked[address(cd[4])][stor3[cd[((32 * idx) + cd[36] + 36)] << 240]].field_0
        mem[_12 + 32] = tokenStaked[address(cd[4])][stor3[cd[((32 * idx) + cd[36] + 36)] << 240]].field_16
        mem[_12 + 64] = tokenStaked[address(cd[4])][stor3[cd[((32 * idx) + cd[36] + 36)] << 240]].field_96
        if block.timestamp < tokenStaked[address(cd[4])][stor3[cd[((32 * idx) + cd[36] + 36)] << 240]].field_16:
            revert with 0, 17
        if block.timestamp - tokenStaked[address(cd[4])][stor3[cd[((32 * idx) + cd[36] + 36)] << 240]].field_16 and 100 * 10^18 > -1 / block.timestamp - tokenStaked[address(cd[4])][stor3[cd[((32 * idx) + cd[36] + 36)] << 240]].field_16:
            revert with 0, 17
        if s > !((100 * 10^18 * block.timestamp) - (100 * 10^18 * tokenStaked[address(cd[4])][stor3[cd[((32 * idx) + cd[36] + 36)] << 240]].field_16) / 24 * 3600):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((100 * 10^18 * block.timestamp) - (100 * 10^18 * tokenStaked[address(cd[4])][stor3[cd[((32 * idx) + cd[36] + 36)] << 240]].field_16) / 24 * 3600)
        continue 
    return (s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length)
}

function addTokensToStake(address arg1, uint16[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if msg.sender == arg1:
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(sub_5757d173Address)
            staticcall sub_5757d173Address.0x6352211e with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + arg2 + 36)] << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_63] == mem[_63 + 12 len 20]
            if mem[_63 + 12 len 20] != msg.sender:
                revert with 0, 'You do not have this token Id'
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(sub_5757d173Address)
            call sub_5757d173Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), uint16(cd[((32 * idx) + arg2 + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            if sub_f995c03f >= sub_97d15988:
                if totalTokenStaked > -2:
                    revert with 0, 17
                totalTokenStaked++
                mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                sub_c3bf1515[cd[((32 * idx) + arg2 + 36)] << 240] = tokenStaked[address(arg1)].field_0
                mem[32] = 4
                _81 = mem[64]
                mem[64] = mem[64] + 96
                mem[_81] = uint16(cd[((32 * idx) + arg2 + 36)])
                mem[_81 + 32] = Mask(80, 0, block.timestamp)
                mem[_81 + 64] = arg1
            else:
                if block.timestamp < lastClaimTimestamp:
                    revert with 0, 17
                if block.timestamp - lastClaimTimestamp and totalTokenStaked > -1 / block.timestamp - lastClaimTimestamp:
                    revert with 0, 17
                if (block.timestamp * totalTokenStaked) - (lastClaimTimestamp * totalTokenStaked) and 100 * 10^18 > -1 / (block.timestamp * totalTokenStaked) - (lastClaimTimestamp * totalTokenStaked):
                    revert with 0, 17
                if sub_f995c03f > !((100 * 10^18 * block.timestamp * totalTokenStaked) - (100 * 10^18 * lastClaimTimestamp * totalTokenStaked) / 24 * 3600):
                    revert with 0, 17
                sub_f995c03f += (100 * 10^18 * block.timestamp * totalTokenStaked) - (100 * 10^18 * lastClaimTimestamp * totalTokenStaked) / 24 * 3600
                lastClaimTimestamp = block.timestamp
                if totalTokenStaked > -2:
                    revert with 0, 17
                totalTokenStaked++
                mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                sub_c3bf1515[cd[((32 * idx) + arg2 + 36)] << 240] = tokenStaked[address(arg1)].field_0
                mem[32] = 4
                _99 = mem[64]
                mem[64] = mem[64] + 96
                mem[_99] = uint16(cd[((32 * idx) + arg2 + 36)])
                mem[_99 + 32] = Mask(80, 0, block.timestamp)
                mem[_99 + 64] = arg1
            tokenStaked[address(arg1)].field_0++
            mem[0] = sha3(address(arg1), 4)
            tokenStaked[address(arg1)][tokenStaked[address(arg1)].field_0].field_0 = uint16(cd[((32 * idx) + arg2 + 36)])
            tokenStaked[address(arg1)][tokenStaked[address(arg1)].field_0].field_16 = Mask(80, 0, block.timestamp)
            tokenStaked[address(arg1)][tokenStaked[address(arg1)].field_0].field_96 = arg1
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = uint16(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 64] = block.timestamp
            emit 0x93d24952: address(arg1), cd[((32 * idx) + arg2 + 36)] << 240, block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if sub_5757d173Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You do not have a permission to do that'
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(sub_5757d173Address)
            staticcall sub_5757d173Address.0x6352211e with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + arg2 + 36)] << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_64] == mem[_64 + 12 len 20]
            if mem[_64 + 12 len 20] != msg.sender:
                revert with 0, 'You do not have this token Id'
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(sub_5757d173Address)
            call sub_5757d173Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), uint16(cd[((32 * idx) + arg2 + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            if sub_f995c03f >= sub_97d15988:
                if totalTokenStaked > -2:
                    revert with 0, 17
                totalTokenStaked++
                mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                sub_c3bf1515[cd[((32 * idx) + arg2 + 36)] << 240] = tokenStaked[address(arg1)].field_0
                mem[32] = 4
                _90 = mem[64]
                mem[64] = mem[64] + 96
                mem[_90] = uint16(cd[((32 * idx) + arg2 + 36)])
                mem[_90 + 32] = Mask(80, 0, block.timestamp)
                mem[_90 + 64] = arg1
            else:
                if block.timestamp < lastClaimTimestamp:
                    revert with 0, 17
                if block.timestamp - lastClaimTimestamp and totalTokenStaked > -1 / block.timestamp - lastClaimTimestamp:
                    revert with 0, 17
                if (block.timestamp * totalTokenStaked) - (lastClaimTimestamp * totalTokenStaked) and 100 * 10^18 > -1 / (block.timestamp * totalTokenStaked) - (lastClaimTimestamp * totalTokenStaked):
                    revert with 0, 17
                if sub_f995c03f > !((100 * 10^18 * block.timestamp * totalTokenStaked) - (100 * 10^18 * lastClaimTimestamp * totalTokenStaked) / 24 * 3600):
                    revert with 0, 17
                sub_f995c03f += (100 * 10^18 * block.timestamp * totalTokenStaked) - (100 * 10^18 * lastClaimTimestamp * totalTokenStaked) / 24 * 3600
                lastClaimTimestamp = block.timestamp
                if totalTokenStaked > -2:
                    revert with 0, 17
                totalTokenStaked++
                mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                sub_c3bf1515[cd[((32 * idx) + arg2 + 36)] << 240] = tokenStaked[address(arg1)].field_0
                mem[32] = 4
                _108 = mem[64]
                mem[64] = mem[64] + 96
                mem[_108] = uint16(cd[((32 * idx) + arg2 + 36)])
                mem[_108 + 32] = Mask(80, 0, block.timestamp)
                mem[_108 + 64] = arg1
            tokenStaked[address(arg1)].field_0++
            mem[0] = sha3(address(arg1), 4)
            tokenStaked[address(arg1)][tokenStaked[address(arg1)].field_0].field_0 = uint16(cd[((32 * idx) + arg2 + 36)])
            tokenStaked[address(arg1)][tokenStaked[address(arg1)].field_0].field_16 = Mask(80, 0, block.timestamp)
            tokenStaked[address(arg1)][tokenStaked[address(arg1)].field_0].field_96 = arg1
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = uint16(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 64] = block.timestamp
            emit 0x93d24952: address(arg1), cd[((32 * idx) + arg2 + 36)] << 240, block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function claimFromStake(uint16[] arg1, bool arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if sub_f995c03f >= sub_97d15988:
        idx = 0
        s = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == uint16(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 3
            if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                revert with 0, 50
            mem[0] = sha3(msg.sender, 4)
            _198 = mem[64]
            mem[64] = mem[64] + 96
            mem[_198] = tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0
            mem[_198 + 32] = tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16
            mem[_198 + 64] = tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96
            if tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 != msg.sender:
                revert with 0, 'This ID does not belong to address'
            if sub_f995c03f < sub_97d15988:
                if block.timestamp < tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16:
                    revert with 0, 17
                if block.timestamp - tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 and 100 * 10^18 > -1 / block.timestamp - tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16:
                    revert with 0, 17
                if not arg2:
                    _247 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_247] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[_247 + 32] = Mask(80, 0, block.timestamp)
                    mem[_247 + 64] = msg.sender
                    mem[32] = 3
                    if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 4)
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0 = uint16(cd[((32 * idx) + arg1 + 36)])
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 = Mask(80, 0, block.timestamp)
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 = msg.sender
                else:
                    if totalTokenStaked < 1:
                        revert with 0, 17
                    totalTokenStaked--
                    mem[32] = 4
                    if tokenStaked[msg.sender].field_0 < 1:
                        revert with 0, 17
                    if tokenStaked[msg.sender].field_0 - 1 >= tokenStaked[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 4)
                    _308 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_308] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    mem[_308 + 32] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    mem[_308 + 64] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                        revert with 0, 50
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    sub_c3bf1515[stor4[msg.sender][stor4[msg.sender].field_0].field_0] = sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240]
                    if not tokenStaked[msg.sender].field_0:
                        revert with 0, 49
                    tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0 = 0
                    tokenStaked[msg.sender].field_0--
                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[32] = 3
                    sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] = 0
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(sub_5757d173Address)
                    call sub_5757d173Address.0xb88d4fde with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = (100 * 10^18 * block.timestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600
                mem[mem[64] + 64] = arg2
                emit 0xfc7267f1: cd[((32 * idx) + arg1 + 36)] << 240, (100 * 10^18 * block.timestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600, arg2
                if s > !((100 * 10^18 * block.timestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((100 * 10^18 * block.timestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600)
                continue 
            if tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 > lastClaimTimestamp:
                if not arg2:
                    _211 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_211] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[_211 + 32] = Mask(80, 0, block.timestamp)
                    mem[_211 + 64] = msg.sender
                    mem[32] = 3
                    if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 4)
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0 = uint16(cd[((32 * idx) + arg1 + 36)])
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 = Mask(80, 0, block.timestamp)
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 = msg.sender
                else:
                    if totalTokenStaked < 1:
                        revert with 0, 17
                    totalTokenStaked--
                    mem[32] = 4
                    if tokenStaked[msg.sender].field_0 < 1:
                        revert with 0, 17
                    if tokenStaked[msg.sender].field_0 - 1 >= tokenStaked[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 4)
                    _232 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_232] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    mem[_232 + 32] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    mem[_232 + 64] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                        revert with 0, 50
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    sub_c3bf1515[stor4[msg.sender][stor4[msg.sender].field_0].field_0] = sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240]
                    if not tokenStaked[msg.sender].field_0:
                        revert with 0, 49
                    tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0 = 0
                    tokenStaked[msg.sender].field_0--
                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[32] = 3
                    sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] = 0
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(sub_5757d173Address)
                    call sub_5757d173Address.0xb88d4fde with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = arg2
                emit 0xfc7267f1: cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2
                if s > -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if lastClaimTimestamp < tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16:
                revert with 0, 17
            if lastClaimTimestamp - tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 and 100 * 10^18 > -1 / lastClaimTimestamp - tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16:
                revert with 0, 17
            if not arg2:
                _261 = mem[64]
                mem[64] = mem[64] + 96
                mem[_261] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[_261 + 32] = Mask(80, 0, block.timestamp)
                mem[_261 + 64] = msg.sender
                mem[32] = 3
                if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 4)
                tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0 = uint16(cd[((32 * idx) + arg1 + 36)])
                tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 = Mask(80, 0, block.timestamp)
                tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 = msg.sender
            else:
                if totalTokenStaked < 1:
                    revert with 0, 17
                totalTokenStaked--
                mem[32] = 4
                if tokenStaked[msg.sender].field_0 < 1:
                    revert with 0, 17
                if tokenStaked[msg.sender].field_0 - 1 >= tokenStaked[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 4)
                _316 = mem[64]
                mem[64] = mem[64] + 96
                mem[_316] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                mem[_316 + 32] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                mem[_316 + 64] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                    revert with 0, 50
                tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                sub_c3bf1515[stor4[msg.sender][stor4[msg.sender].field_0].field_0] = sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240]
                if not tokenStaked[msg.sender].field_0:
                    revert with 0, 49
                tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0 = 0
                tokenStaked[msg.sender].field_0--
                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 3
                sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] = 0
                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_5757d173Address)
                call sub_5757d173Address.0xb88d4fde with:
                     gas gas_remaining wei
                    args this.address, msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 32] = (100 * 10^18 * lastClaimTimestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600
            mem[mem[64] + 64] = arg2
            emit 0xfc7267f1: cd[((32 * idx) + arg1 + 36)] << 240, (100 * 10^18 * lastClaimTimestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600, arg2
            if s > !((100 * 10^18 * lastClaimTimestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((100 * 10^18 * lastClaimTimestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600)
            continue 
    else:
        if block.timestamp < lastClaimTimestamp:
            revert with 0, 17
        if block.timestamp - lastClaimTimestamp and totalTokenStaked > -1 / block.timestamp - lastClaimTimestamp:
            revert with 0, 17
        if (block.timestamp * totalTokenStaked) - (lastClaimTimestamp * totalTokenStaked) and 100 * 10^18 > -1 / (block.timestamp * totalTokenStaked) - (lastClaimTimestamp * totalTokenStaked):
            revert with 0, 17
        if sub_f995c03f > !((100 * 10^18 * block.timestamp * totalTokenStaked) - (100 * 10^18 * lastClaimTimestamp * totalTokenStaked) / 24 * 3600):
            revert with 0, 17
        sub_f995c03f += (100 * 10^18 * block.timestamp * totalTokenStaked) - (100 * 10^18 * lastClaimTimestamp * totalTokenStaked) / 24 * 3600
        lastClaimTimestamp = block.timestamp
        idx = 0
        s = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == uint16(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 3
            if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                revert with 0, 50
            mem[0] = sha3(msg.sender, 4)
            _200 = mem[64]
            mem[64] = mem[64] + 96
            mem[_200] = tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0
            mem[_200 + 32] = tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16
            mem[_200 + 64] = tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96
            if tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 != msg.sender:
                revert with 0, 'This ID does not belong to address'
            if sub_f995c03f < sub_97d15988:
                if block.timestamp < tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16:
                    revert with 0, 17
                if block.timestamp - tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 and 100 * 10^18 > -1 / block.timestamp - tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16:
                    revert with 0, 17
                if not arg2:
                    _258 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_258] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[_258 + 32] = Mask(80, 0, block.timestamp)
                    mem[_258 + 64] = msg.sender
                    mem[32] = 3
                    if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 4)
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0 = uint16(cd[((32 * idx) + arg1 + 36)])
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 = Mask(80, 0, block.timestamp)
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 = msg.sender
                else:
                    if totalTokenStaked < 1:
                        revert with 0, 17
                    totalTokenStaked--
                    mem[32] = 4
                    if tokenStaked[msg.sender].field_0 < 1:
                        revert with 0, 17
                    if tokenStaked[msg.sender].field_0 - 1 >= tokenStaked[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 4)
                    _312 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_312] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    mem[_312 + 32] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    mem[_312 + 64] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                        revert with 0, 50
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    sub_c3bf1515[stor4[msg.sender][stor4[msg.sender].field_0].field_0] = sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240]
                    if not tokenStaked[msg.sender].field_0:
                        revert with 0, 49
                    tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0 = 0
                    tokenStaked[msg.sender].field_0--
                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[32] = 3
                    sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] = 0
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(sub_5757d173Address)
                    call sub_5757d173Address.0xb88d4fde with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = (100 * 10^18 * block.timestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600
                mem[mem[64] + 64] = arg2
                emit 0xfc7267f1: cd[((32 * idx) + arg1 + 36)] << 240, (100 * 10^18 * block.timestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600, arg2
                if s > !((100 * 10^18 * block.timestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((100 * 10^18 * block.timestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600)
                continue 
            if tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 > lastClaimTimestamp:
                if not arg2:
                    _214 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_214] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[_214 + 32] = Mask(80, 0, block.timestamp)
                    mem[_214 + 64] = msg.sender
                    mem[32] = 3
                    if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 4)
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0 = uint16(cd[((32 * idx) + arg1 + 36)])
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 = Mask(80, 0, block.timestamp)
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 = msg.sender
                else:
                    if totalTokenStaked < 1:
                        revert with 0, 17
                    totalTokenStaked--
                    mem[32] = 4
                    if tokenStaked[msg.sender].field_0 < 1:
                        revert with 0, 17
                    if tokenStaked[msg.sender].field_0 - 1 >= tokenStaked[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 4)
                    _236 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_236] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    mem[_236 + 32] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    mem[_236 + 64] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                        revert with 0, 50
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                    sub_c3bf1515[stor4[msg.sender][stor4[msg.sender].field_0].field_0] = sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240]
                    if not tokenStaked[msg.sender].field_0:
                        revert with 0, 49
                    tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0 = 0
                    tokenStaked[msg.sender].field_0--
                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[32] = 3
                    sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] = 0
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(sub_5757d173Address)
                    call sub_5757d173Address.0xb88d4fde with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = arg2
                emit 0xfc7267f1: cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2
                if s > -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if lastClaimTimestamp < tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16:
                revert with 0, 17
            if lastClaimTimestamp - tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 and 100 * 10^18 > -1 / lastClaimTimestamp - tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16:
                revert with 0, 17
            if not arg2:
                _272 = mem[64]
                mem[64] = mem[64] + 96
                mem[_272] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[_272 + 32] = Mask(80, 0, block.timestamp)
                mem[_272 + 64] = msg.sender
                mem[32] = 3
                if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 4)
                tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0 = uint16(cd[((32 * idx) + arg1 + 36)])
                tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 = Mask(80, 0, block.timestamp)
                tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 = msg.sender
            else:
                if totalTokenStaked < 1:
                    revert with 0, 17
                totalTokenStaked--
                mem[32] = 4
                if tokenStaked[msg.sender].field_0 < 1:
                    revert with 0, 17
                if tokenStaked[msg.sender].field_0 - 1 >= tokenStaked[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 4)
                _328 = mem[64]
                mem[64] = mem[64] + 96
                mem[_328] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                mem[_328 + 32] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                mem[_328 + 64] = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                if sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] >= tokenStaked[msg.sender].field_0:
                    revert with 0, 50
                tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_0 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_96 = tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0
                sub_c3bf1515[stor4[msg.sender][stor4[msg.sender].field_0].field_0] = sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240]
                if not tokenStaked[msg.sender].field_0:
                    revert with 0, 49
                tokenStaked[msg.sender][tokenStaked[msg.sender].field_0].field_0 = 0
                tokenStaked[msg.sender].field_0--
                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 3
                sub_c3bf1515[cd[((32 * idx) + arg1 + 36)] << 240] = 0
                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_5757d173Address)
                call sub_5757d173Address.0xb88d4fde with:
                     gas gas_remaining wei
                    args this.address, msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 32] = (100 * 10^18 * lastClaimTimestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600
            mem[mem[64] + 64] = arg2
            emit 0xfc7267f1: cd[((32 * idx) + arg1 + 36)] << 240, (100 * 10^18 * lastClaimTimestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600, arg2
            if s > !((100 * 10^18 * lastClaimTimestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((100 * 10^18 * lastClaimTimestamp) - (100 * 10^18 * tokenStaked[msg.sender][stor3[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) / 24 * 3600)
            continue 
    if s:
        require ext_code.size(stor2)
        call stor2.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
