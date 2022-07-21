contract main {




// =====================  Runtime code  =====================


const name = '', 0

const decimals = 18

const symbol = '', 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
mapping of uint8 stor104;
uint8 stor105;
uint256 _taxFee;
uint256 sub_2ef5cf97;
uint256 stor108;
address _routerAddress;
uint256 stor110;
uint8 stor111;

function totalSupply() {
    return totalSupply
}

function sub_2ef5cf97(?) {
    return sub_2ef5cf97
}

function _taxFee() {
    return _taxFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor104[arg1])
}

function sub_9f02979b(?) {
    return bool(stor105)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _router() {
    return _routerAddress
}

function setTaxFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    _taxFee = arg1
}

function sub_7801ed1b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    stor105 = uint8(bool(arg1))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0, '4'
    if not msg.sender:
        revert with 0, '5'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function shouldTakeFee(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor104[address(arg1)]:
        return not bool(stor104[address(arg1)])
    if stor104[address(arg2)]:
        return not bool(stor104[address(arg2)])
    return bool(stor105)
}

function addAddressToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor104[address(arg1)]:
        return 0
    stor104[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
    return 1
}

function removeAddressFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor104[address(arg1)]:
        return 0
    stor104[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not arg1:
        revert with 0, '4'
    if not msg.sender:
        revert with 0, '5'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not arg1:
        revert with 0, '4'
    if not msg.sender:
        revert with 0, '5'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor105 = 1
    stor108 = 200 * 10^18
    _taxFee = 10
    stor110 = 100
    allowance[this.address][address(arg1)] = -1
    _routerAddress = arg1
    if not msg.sender:
        revert with 0, '2'
    if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffff2c3de43133125effffff:
        revert with 0, 17
    totalSupply += 1000000 * 10^18
    if balanceOf[address(msg.sender)] > 0xffffffffffffffffffffffffffffffffffffffffffff2c3de43133125effffff:
        revert with 0, 17
    balanceOf[address(msg.sender)] += 1000000 * 10^18
    emit 0xfeddf252: 1000000 * 10^18, 0, msg.sender
    stor104[msg.sender] = 1
    stor104[this.address] = 1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function addAddressesToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 104
        if stor104[mem[(32 * idx) + 140 len 20]]:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 104
        stor104[address(mem[(32 * idx) + 128])] = 1
        mem[ceil32(32 * arg1.length) + 97] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressAdded(mem[ceil32(32 * arg1.length) + 97]);
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function removeAddressesFromWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 104
        if not stor104[mem[(32 * idx) + 140 len 20]]:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 104
        stor104[address(mem[(32 * idx) + 128])] = 0
        mem[ceil32(32 * arg1.length) + 97] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressRemoved(mem[ceil32(32 * arg1.length) + 97]);
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor111:
        if not arg1:
            revert with 0, 'to address will not be 0'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
        emit 0xfeddf252: arg2, msg.sender, arg1
    else:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if sub_2ef5cf97 >= stor108:
            stor111 = 1
            mem[128] = this.address
            staticcall _routerAddress.0x73b295c2 with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = sub_2ef5cf97
            idx = 0
            s = ceil32(return_data.size) + 388
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(_routerAddress)
            call _routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sub_2ef5cf97, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_2ef5cf97 = 0
            call owner with:
               value eth.balance(this.address) wei
                 gas 3 * 10^6 wei
            if not ext_call.success:
                revert with 0, 'receiver rejected ETH transfer'
            stor111 = 0
        if stor104[address(msg.sender)]:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit 0xfeddf252: arg2, msg.sender, arg1
        else:
            if stor104[address(arg1)]:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                emit 0xfeddf252: arg2, msg.sender, arg1
            else:
                if not stor105:
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    emit 0xfeddf252: arg2, msg.sender, arg1
                else:
                    if arg2 and _taxFee > -1 / arg2:
                        revert with 0, 17
                    if not stor110:
                        revert with 0, 18
                    if sub_2ef5cf97 > !(arg2 * _taxFee / stor110 / 2):
                        revert with 0, 17
                    sub_2ef5cf97 += arg2 * _taxFee / stor110 / 2
                    if balanceOf[this.address] > !(arg2 * _taxFee / stor110):
                        revert with 0, 17
                    balanceOf[this.address] += arg2 * _taxFee / stor110
                    emit 0xfeddf252: (arg2 * _taxFee / stor110), msg.sender, this.address
                    if arg2 < arg2 * _taxFee / stor110:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * _taxFee / stor110)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / stor110)
                    emit 0xfeddf252: (arg2 - (arg2 * _taxFee / stor110)), msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor111:
        if not arg2:
            revert with 0, 'to address will not be 0'
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
        emit 0xfeddf252: arg3, arg1, arg2
    else:
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if sub_2ef5cf97 >= stor108:
            stor111 = 1
            mem[128] = this.address
            staticcall _routerAddress.0x73b295c2 with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = sub_2ef5cf97
            idx = 0
            s = ceil32(return_data.size) + 388
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(_routerAddress)
            call _routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sub_2ef5cf97, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_2ef5cf97 = 0
            call owner with:
               value eth.balance(this.address) wei
                 gas 3 * 10^6 wei
            if not ext_call.success:
                revert with 0, 'receiver rejected ETH transfer'
            stor111 = 0
        if stor104[address(arg1)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit 0xfeddf252: arg3, arg1, arg2
        else:
            if stor104[address(arg2)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit 0xfeddf252: arg3, arg1, arg2
            else:
                if not stor105:
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit 0xfeddf252: arg3, arg1, arg2
                else:
                    if arg3 and _taxFee > -1 / arg3:
                        revert with 0, 17
                    if not stor110:
                        revert with 0, 18
                    if sub_2ef5cf97 > !(arg3 * _taxFee / stor110 / 2):
                        revert with 0, 17
                    sub_2ef5cf97 += arg3 * _taxFee / stor110 / 2
                    if balanceOf[this.address] > !(arg3 * _taxFee / stor110):
                        revert with 0, 17
                    balanceOf[this.address] += arg3 * _taxFee / stor110
                    emit 0xfeddf252: (arg3 * _taxFee / stor110), arg1, this.address
                    if arg3 < arg3 * _taxFee / stor110:
                        revert with 0, 17
                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * _taxFee / stor110)):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / stor110)
                    emit 0xfeddf252: (arg3 - (arg3 * _taxFee / stor110)), arg1, arg2
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not msg.sender:
        revert with 0, '4'
    if not arg1:
        revert with 0, '5'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x7801ed1b(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xa9059cbb(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x95d89b41(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x7801ed1b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == bool(cd[4])
                    stor105 = uint8(bool(cd[4]))
                if uint32(call.func_hash) >> 224 != unknown_0x7b9417c8(?????):
                    require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if stor104[address(cd[4])]:
                    return 0
                stor104[address(cd[4])] = 1
                emit WhitelistedAddressAdded(address(cd[4]));
            else:
                if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return '', 0
                if unknown_0x9b19251a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor104[cd[4]])
                if unknown_0x9f02979b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(stor105)
                require unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if allowance[msg.sender][address(cd[4])] < cd[36]:
                    revert with 0, 17
                if not address(cd[4]):
                    revert with 0, '4'
                if not msg.sender:
                    revert with 0, '5'
                allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] - cd[36]
                emit Approval((allowance[msg.sender][address(cd[4])] - cd[36]), msg.sender, address(cd[4]));
        else:
            if unknown_0xdd62ed3e(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    return allowance[address(cd[4])][address(cd[36])]
                if uint32(call.func_hash) >> 224 != unknown_0xe2ec6ec3(?????):
                    if unknown_0xedae876f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return _routerAddress
                    require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
                s = 160
                idx = cd[4] + 36
                while idx < (32 * ('cd', 4).length) + cd[4] + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                idx = 0
                s = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[128]:
                        revert with 0, 50
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[0] = mem[(32 * idx) + 172 len 20]
                    mem[32] = 104
                    if stor104[mem[(32 * idx) + 172 len 20]]:
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = mem[(32 * idx) + 172 len 20]
                    mem[32] = 104
                    stor104[address(mem[(32 * idx) + 160])] = 1
                    mem[ceil32(32 * ('cd', 4).length) + 129] = mem[(32 * idx) + 172 len 20]
                    emit WhitelistedAddressAdded(mem[ceil32(32 * ('cd', 4).length) + 129]);
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 1
                    continue 
                return bool(s)
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                if unknown_0xc4081a4c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    _taxFee = cd[4]
                else:
                    require unknown_0xc4d66de8(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if uint8(stor0.field_8):
                        if ext_code.size(this.address):
                            revert with 0, 'Initializable: contract is already initialized'
                    else:
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                    if not uint8(stor0.field_8):
                        uint16(stor0.field_0) = 257
                        revert with 0, 'Initializable: contract is not initializing'
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    stor105 = 1
                    stor108 = 200 * 10^18
                    _taxFee = 10
                    stor110 = 100
                    allowance[this.address][address(cd[4])] = -1
                    _routerAddress = address(cd[4])
                    if not msg.sender:
                        revert with 0, '2'
                    if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffff2c3de43133125effffff:
                        revert with 0, 17
                    totalSupply += 1000000 * 10^18
                    if balanceOf[address(msg.sender)] > 0xffffffffffffffffffffffffffffffffffffffffffff2c3de43133125effffff:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] += 1000000 * 10^18
                    emit 0xfeddf252: 1000000 * 10^18, 0, msg.sender
                    stor104[msg.sender] = 1
                    stor104[this.address] = 1
                    if not uint8(stor0.field_8):
                        uint8(stor0.field_8) = 0
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: transfer to the zero address'
            if stor111:
                if not address(cd[4]):
                    revert with 0, 'to address will not be 0'
                if balanceOf[address(msg.sender)] < cd[36]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= cd[36]
                if balanceOf[address(cd[4])] > !cd[36]:
                    revert with 0, 17
                balanceOf[address(cd[4])] += cd[36]
                emit 0xfeddf252: cd[36], msg.sender, address(cd[4])
            else:
                if balanceOf[address(msg.sender)] < cd[36]:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= cd[36]
                if sub_2ef5cf97 >= stor108:
                    stor111 = 1
                    mem[160] = this.address
                    staticcall _routerAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[192] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = sub_2ef5cf97
                    idx = 0
                    s = ceil32(return_data.size) + 420
                    t = 160
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(_routerAddress)
                    call _routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args sub_2ef5cf97, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_2ef5cf97 = 0
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 3 * 10^6 wei
                    if not ext_call.success:
                        revert with 0, 'receiver rejected ETH transfer'
                    stor111 = 0
                if stor104[address(msg.sender)]:
                    if balanceOf[address(cd[4])] > !cd[36]:
                        revert with 0, 17
                    balanceOf[address(cd[4])] += cd[36]
                    emit 0xfeddf252: cd[36], msg.sender, address(cd[4])
                else:
                    if stor104[address(cd[4])]:
                        if balanceOf[address(cd[4])] > !cd[36]:
                            revert with 0, 17
                        balanceOf[address(cd[4])] += cd[36]
                        emit 0xfeddf252: cd[36], msg.sender, address(cd[4])
                    else:
                        if not stor105:
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit 0xfeddf252: cd[36], msg.sender, address(cd[4])
                        else:
                            if cd[36] and _taxFee > -1 / cd[36]:
                                revert with 0, 17
                            if not stor110:
                                revert with 0, 18
                            if sub_2ef5cf97 > !(cd[36] * _taxFee / stor110 / 2):
                                revert with 0, 17
                            sub_2ef5cf97 += cd[36] * _taxFee / stor110 / 2
                            if balanceOf[this.address] > !(cd[36] * _taxFee / stor110):
                                revert with 0, 17
                            balanceOf[this.address] += cd[36] * _taxFee / stor110
                            emit 0xfeddf252: (cd[36] * _taxFee / stor110), msg.sender, this.address
                            if cd[36] < cd[36] * _taxFee / stor110:
                                revert with 0, 17
                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * _taxFee / stor110)):
                                revert with 0, 17
                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * _taxFee / stor110)
                            emit 0xfeddf252: (cd[36] - (cd[36] * _taxFee / stor110)), msg.sender, address(cd[4])
    else:
        if unknown_0x2ef5cf97(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x39509351(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x2ef5cf97(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_2ef5cf97
                if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 18
                require unknown_0x332402f8(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                if stor104[address(cd[4])]:
                    return not bool(stor104[address(cd[4])])
                if stor104[address(cd[36])]:
                    return not bool(stor104[address(cd[36])])
                return bool(stor105)
            if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                if unknown_0x3b124fe7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return _taxFee
                if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return balanceOf[address(cd[4])]
                require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if allowance[msg.sender][address(cd[4])] > !cd[36]:
                revert with 0, 17
            if not address(cd[4]):
                revert with 0, '4'
            if not msg.sender:
                revert with 0, '5'
            allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] + cd[36]
            emit Approval((allowance[msg.sender][address(cd[4])] + cd[36]), msg.sender, address(cd[4]));
        else:
            if name() == uint32(call.func_hash) >> 224:
                require not msg.value
                return '', 0
            if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if not address(cd[4]):
                    revert with 0, '4'
                if not msg.sender:
                    revert with 0, '5'
                allowance[address(msg.sender)][address(cd[4])] = cd[36]
                emit Approval(cd[36], msg.sender, address(cd[4]));
            else:
                if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalSupply
                if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x24953eaa(?????):
                        require unknown_0x286dd3f5(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not stor104[address(cd[4])]:
                            return 0
                        stor104[address(cd[4])] = 0
                        emit WhitelistedAddressRemoved(address(cd[4]));
                        return 1
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
                    s = 160
                    idx = cd[4] + 36
                    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    s = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[128]:
                            revert with 0, 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[0] = mem[(32 * idx) + 172 len 20]
                        mem[32] = 104
                        if not stor104[mem[(32 * idx) + 172 len 20]]:
                            if not idx + 1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = mem[(32 * idx) + 172 len 20]
                        mem[32] = 104
                        stor104[address(mem[(32 * idx) + 160])] = 0
                        mem[ceil32(32 * ('cd', 4).length) + 129] = mem[(32 * idx) + 172 len 20]
                        emit WhitelistedAddressRemoved(mem[ceil32(32 * ('cd', 4).length) + 129]);
                        if not idx + 1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 1
                        continue 
                    return bool(s)
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                if not address(cd[4]):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(cd[36]):
                    revert with 0, 'ERC20: transfer to the zero address'
                if stor111:
                    if not address(cd[36]):
                        revert with 0, 'to address will not be 0'
                    if balanceOf[address(cd[4])] < cd[68]:
                        revert with 0, 17
                    balanceOf[address(cd[4])] -= cd[68]
                    if balanceOf[address(cd[36])] > !cd[68]:
                        revert with 0, 17
                    balanceOf[address(cd[36])] += cd[68]
                    emit 0xfeddf252: cd[68], address(cd[4]), address(cd[36])
                else:
                    if balanceOf[address(cd[4])] < cd[68]:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(cd[4])] -= cd[68]
                    if sub_2ef5cf97 >= stor108:
                        stor111 = 1
                        mem[160] = this.address
                        staticcall _routerAddress.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = sub_2ef5cf97
                        idx = 0
                        s = ceil32(return_data.size) + 420
                        t = 160
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(_routerAddress)
                        call _routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args sub_2ef5cf97, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_2ef5cf97 = 0
                        call owner with:
                           value eth.balance(this.address) wei
                             gas 3 * 10^6 wei
                        if not ext_call.success:
                            revert with 0, 'receiver rejected ETH transfer'
                        stor111 = 0
                    if stor104[address(cd[4])]:
                        if balanceOf[address(cd[36])] > !cd[68]:
                            revert with 0, 17
                        balanceOf[address(cd[36])] += cd[68]
                        emit 0xfeddf252: cd[68], address(cd[4]), address(cd[36])
                    else:
                        if stor104[address(cd[36])]:
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit 0xfeddf252: cd[68], address(cd[4]), address(cd[36])
                        else:
                            if not stor105:
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit 0xfeddf252: cd[68], address(cd[4]), address(cd[36])
                            else:
                                if cd[68] and _taxFee > -1 / cd[68]:
                                    revert with 0, 17
                                if not stor110:
                                    revert with 0, 18
                                if sub_2ef5cf97 > !(cd[68] * _taxFee / stor110 / 2):
                                    revert with 0, 17
                                sub_2ef5cf97 += cd[68] * _taxFee / stor110 / 2
                                if balanceOf[this.address] > !(cd[68] * _taxFee / stor110):
                                    revert with 0, 17
                                balanceOf[this.address] += cd[68] * _taxFee / stor110
                                emit 0xfeddf252: (cd[68] * _taxFee / stor110), address(cd[4]), this.address
                                if cd[68] < cd[68] * _taxFee / stor110:
                                    revert with 0, 17
                                if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * _taxFee / stor110)):
                                    revert with 0, 17
                                balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * _taxFee / stor110)
                                emit 0xfeddf252: (cd[68] - (cd[68] * _taxFee / stor110)), address(cd[4]), address(cd[36])
                if allowance[address(cd[4])][msg.sender] < cd[68]:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, '4'
                if not address(cd[4]):
                    revert with 0, '5'
                allowance[address(cd[4])][address(msg.sender)] = allowance[address(cd[4])][msg.sender] - cd[68]
                emit Approval((allowance[address(cd[4])][msg.sender] - cd[68]), address(cd[4]), msg.sender);
    return 1
}



}
