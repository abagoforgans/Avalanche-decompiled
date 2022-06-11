contract main {




// =====================  Runtime code  =====================


const router = 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506

const WMEMO = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d


address owner;
array of address path;
uint8 stor2;
uint256 stor3; offset 32
uint256 amountIn;
uint256 amountOutMin;

function amountOutMin() payable {
    return amountOutMin
}

function sub_57fb409c(?) payable {
    return bool(stor2)
}

function amountIn() payable {
    return amountIn
}

function owner() payable {
    return owner
}

function path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < path.length
    return path[arg1]
}

function _fallback() payable {
    revert
}

function cancelOrder() payable {
    require msg.sender == owner
    require stor2
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, amountIn
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor2 = 0
}

function sub_f506492a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    require not stor2
    amountIn = arg1
    amountOutMin = arg2
    stor2 = 1
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), amountIn
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_3592d016(?) payable {
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = amountIn
    mem[132] = 64
    mem[164] = path.length
    mem[0] = 1
    idx = 0
    s = 0
    t = 196
    while idx < path.length:
        mem[t] = path[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args amountIn, Array(len=path.length, data=mem[196 len 32 * path.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _16 = mem[96 len 4], stor3
    require mem[96 len 4], stor3 <= test266151307()
    require mem[96 len 4], stor3 + 127 < return_data.size + 96
    _17 = mem[mem[96 len 4], stor3 + 96]
    if mem[mem[96 len 4], stor3 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], stor3 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], stor3 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], stor3 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _17
    require _16 + (32 * _17) + 32 <= return_data.size
    idx = 0
    s = _16 + 128
    t = ceil32(return_data.size) + 128
    while idx < _17:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _17 < 1:
        revert with 'NH{q', 17
    if _17 - 1 >= _17:
        revert with 'NH{q', 50
    return memory
      from (32 * _17 - 1) + ceil32(return_data.size) + 128
       len 32
}

function execute() payable {
    require msg.sender == owner
    require stor2
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = amountIn
    mem[132] = 64
    mem[164] = path.length
    mem[0] = 1
    idx = 0
    s = 0
    t = 196
    while idx < path.length:
        mem[t] = path[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    staticcall 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args amountIn, Array(len=path.length, data=mem[196 len 32 * path.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _39 = mem[96 len 4], stor3
    require mem[96 len 4], stor3 <= test266151307()
    require mem[96 len 4], stor3 + 127 < return_data.size + 96
    _40 = mem[mem[96 len 4], stor3 + 96]
    if mem[mem[96 len 4], stor3 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], stor3 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], stor3 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], stor3 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _40
    require _39 + (32 * _40) + 32 <= return_data.size
    idx = 0
    s = _39 + 128
    t = ceil32(return_data.size) + 128
    while idx < _40:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _40 < 1:
        revert with 'NH{q', 17
    if _40 - 1 >= _40:
        revert with 'NH{q', 50
    if mem[(32 * _40 - 1) + ceil32(return_data.size) + 128] < amountOutMin:
        revert with 0, 'Limit not reached'
    mem[mem[64] + 4] = 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506
    mem[mem[64] + 36] = amountIn
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, amountIn
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _79 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_79] == bool(mem[_79])
    if _40 < 1:
        revert with 'NH{q', 17
    if _40 - 1 >= _40:
        revert with 'NH{q', 50
    _84 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = amountIn
    mem[mem[64] + 36] = mem[(32 * _40 - 1) + ceil32(return_data.size) + 128]
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = path.length
    mem[0] = 1
    idx = 0
    s = 0
    t = mem[64] + 196
    while idx < path.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[_84 + 100] = this.address
    mem[_84 + 132] = block.timestamp
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _84 + (32 * path.length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _101 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _102 = mem[_101]
    require mem[_101] <= test266151307()
    require _101 + mem[_101] + 31 < _101 + return_data.size
    _103 = mem[_101 + mem[_101]]
    if mem[_101 + mem[_101]] > test266151307():
        revert with 'NH{q', 65
    if _101 + ceil32(return_data.size) + floor32(mem[_101 + mem[_101]]) + 1 > test266151307() or floor32(mem[_101 + mem[_101]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _101 + ceil32(return_data.size) + floor32(mem[_101 + mem[_101]]) + 1
    mem[_101 + ceil32(return_data.size)] = _103
    require _102 + (32 * _103) + 32 <= return_data.size
    idx = 0
    s = _101 + _102 + 32
    t = _101 + ceil32(return_data.size) + 32
    while idx < _103:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _117 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _118 = mem[_117]
    require mem[_117] == mem[_117]
    mem[mem[64] + 4] = owner
    mem[mem[64] + 36] = _118
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    call 0x130966628846bfd36ff31a822705796e8cb8c18d.0xa9059cbb with:
         gas gas_remaining wei
        args owner, _118
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _121 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_121] == bool(mem[_121])
    stor2 = 0
    amountIn = 0
    amountOutMin = 0
}



}
