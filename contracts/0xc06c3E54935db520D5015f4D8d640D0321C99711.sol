contract main {




// =====================  Runtime code  =====================


address stor1;
mapping of uint256 stor99;
uint256 stor6BEC;

function _fallback() payable {
    revert
}

function reverseAirdrop(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = ceil32(32 * arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if stor1 != msg.sender:
        revert with 0, 'owner'
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = 8
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = 'balances'
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 198] = 32
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 230] = 8
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 262] = 'balances'
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 270] = 0
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 162] = 100
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 194 len 4] = getId(string rg1)
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 294 len 128] = 0, 'balances', 0, mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 302 len 20]
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 394] = 0
    staticcall this.address with:
            gas gas_remaining wei
           args mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 298 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'getMappingId transferrer'
        _1540 = sha3(mem[192 len mem[160]])
        idx = 0
        while idx < arg1.length:
            if idx >= arg2.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] < 1:
                revert with 'NH{q', 17
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = _1540
            if not stor6BEC:
                revert with 'NH{q', 18
            if stor[_1540][mem[(32 * idx) + 140 len 20]] / stor6BEC < mem[(32 * idx) + ceil32(32 * arg1.length) + 129] - 1:
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                _1947 = mem[(32 * idx) + 128]
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 294] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                emit 0xbc31868c: mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 294], address(_1947), msg.sender
            else:
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] and stor6BEC > -1 / mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC <= stor[_1540][mem[(32 * idx) + 140 len 20]]:
                    if stor[_1540][msg.sender] > !(mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC):
                        revert with 'NH{q', 17
                    stor[_1540][msg.sender] += mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = _1540
                    if stor[_1540][mem[(32 * idx) + 140 len 20]] < mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC:
                        revert with 'NH{q', 17
                    stor[_1540][mem[(32 * idx) + 140 len 20]] += -1 * mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    _2109 = mem[(32 * idx) + 128]
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 294] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                    emit Transfer(mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 294], address(_2109), msg.sender);
                else:
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    if stor[_1540][msg.sender] > !stor[_1540][mem[(32 * idx) + 140 len 20]]:
                        revert with 'NH{q', 17
                    stor[_1540][msg.sender] += stor[_1540][mem[(32 * idx) + 140 len 20]]
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = _1540
                    if stor[_1540][mem[(32 * idx) + 140 len 20]] < stor[_1540][mem[(32 * idx) + 140 len 20]]:
                        revert with 'NH{q', 17
                    stor[_1540][mem[(32 * idx) + 140 len 20]] = 0
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    _2156 = mem[(32 * idx) + 128]
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 294] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                    emit Transfer(mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 294], address(_2156), msg.sender);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 294] = return_data.size
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 326 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'getMappingId transferrer'
        _1543 = sha3(mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 390 len mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 358]])
        idx = 0
        while idx < arg1.length:
            if idx >= arg2.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] < 1:
                revert with 'NH{q', 17
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = _1543
            if not stor6BEC:
                revert with 'NH{q', 18
            if stor[_1543][mem[(32 * idx) + 140 len 20]] / stor6BEC < mem[(32 * idx) + ceil32(32 * arg1.length) + 129] - 1:
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                _1950 = mem[(32 * idx) + 128]
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 295] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                emit 0xbc31868c: mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 295], address(_1950), msg.sender
            else:
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] and stor6BEC > -1 / mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC <= stor[_1543][mem[(32 * idx) + 140 len 20]]:
                    if stor[_1543][msg.sender] > !(mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC):
                        revert with 'NH{q', 17
                    stor[_1543][msg.sender] += mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = _1543
                    if stor[_1543][mem[(32 * idx) + 140 len 20]] < mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC:
                        revert with 'NH{q', 17
                    stor[_1543][mem[(32 * idx) + 140 len 20]] += -1 * mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    _2111 = mem[(32 * idx) + 128]
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 295] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                    emit Transfer(mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 295], address(_2111), msg.sender);
                else:
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    if stor[_1543][msg.sender] > !stor[_1543][mem[(32 * idx) + 140 len 20]]:
                        revert with 'NH{q', 17
                    stor[_1543][msg.sender] += stor[_1543][mem[(32 * idx) + 140 len 20]]
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = _1543
                    if stor[_1543][mem[(32 * idx) + 140 len 20]] < stor[_1543][mem[(32 * idx) + 140 len 20]]:
                        revert with 'NH{q', 17
                    stor[_1543][mem[(32 * idx) + 140 len 20]] = 0
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    _2159 = mem[(32 * idx) + 128]
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 295] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                    emit Transfer(mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 295], address(_2159), msg.sender);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
