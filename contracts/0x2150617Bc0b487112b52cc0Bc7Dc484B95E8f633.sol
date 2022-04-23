contract main {




// =====================  Runtime code  =====================


const bentoBox = 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f

const degenBox = 0x1fc83f75499b7620d53757f0b01e2ae626aae530

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d


address owner;
address pendingOwner;
array of address cauldrons;
array of address degens;

function cauldrons(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < cauldrons.length
    return cauldrons[arg1]
}

function owner() payable {
    return owner
}

function degens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < degens.length
    return degens[arg1]
}

function pendingOwner() payable {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function claimOwnership() payable {
    if pendingOwner != msg.sender:
        revert with 0, 'Ownable: caller != pending owner'
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function addDegen(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    degens.length++
    degens[degens.length] = arg1
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cauldrons.length++
    cauldrons[cauldrons.length] = arg1
}

function transferOwnership(address arg1, bool arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        pendingOwner = arg1
    else:
        if not arg1:
            if not arg3:
                revert with 0, 'Ownable: zero address'
        emit OwnershipTransferred(owner, arg1);
        owner = arg1
        pendingOwner = 0
}

function addPools(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        cauldrons.length++
        mem[0] = 2
        cauldrons[cauldrons.length] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdraw() payable {
    mem[64] = 96
    idx = 0
    while idx < cauldrons.length:
        require ext_code.size(cauldrons[idx])
        call cauldrons[idx].accrue() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= cauldrons.length:
            revert with 'NH{q', 50
        mem[0] = 2
        require ext_code.size(cauldrons[idx])
        staticcall cauldrons[idx].accrueInfo() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _83 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_83] == mem[_83 + 24 len 8]
        _87 = mem[_83 + 32]
        require mem[_83 + 32] == mem[_83 + 48 len 16]
        require mem[_83 + 64] == mem[_83 + 88 len 8]
        if idx >= cauldrons.length:
            revert with 'NH{q', 50
        mem[0] = 2
        mem[mem[64] + 4] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[mem[64] + 36] = cauldrons[idx]
        require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
        staticcall 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args 0x130966628846bfd36ff31a822705796e8cb8c18d, cauldrons[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _97 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _99 = mem[_97]
        require mem[_97] == mem[_97]
        mem[mem[64] + 4] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[mem[64] + 36] = _99
        mem[mem[64] + 68] = 0
        require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
        staticcall 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.toAmount(address rg1, uint256 rg2, bool rg3) with:
                gas gas_remaining wei
               args 0x130966628846bfd36ff31a822705796e8cb8c18d, _99, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _105 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_105] == mem[_105]
        if uint128(_87) > mem[_105]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f
            mem[mem[64] + 68] = uint128(_87)
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            call 0x130966628846bfd36ff31a822705796e8cb8c18d.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, uint128(_87)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _119 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_119] == bool(mem[_119])
            if idx >= cauldrons.length:
                revert with 'NH{q', 50
            mem[0] = 2
            mem[mem[64] + 36] = 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f
            mem[mem[64] + 68] = cauldrons[idx]
            mem[mem[64] + 100] = uint128(_87)
            mem[mem[64] + 132] = 0
            require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
            call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.deposit(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0x130966628846bfd36ff31a822705796e8cb8c18d, 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f, cauldrons[idx], _87 << 128, 0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _129 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_129] == mem[_129]
            require mem[_129 + 32] == mem[_129 + 32]
        if idx >= cauldrons.length:
            revert with 'NH{q', 50
        mem[0] = 2
        mem[mem[64]] = 0x476343ee00000000000000000000000000000000000000000000000000000000
        require ext_code.size(cauldrons[idx])
        call cauldrons[idx].withdrawFees() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < degens.length:
        require ext_code.size(degens[idx])
        call degens[idx].accrue() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= degens.length:
            revert with 'NH{q', 50
        mem[0] = 3
        require ext_code.size(degens[idx])
        staticcall degens[idx].accrueInfo() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_147] == mem[_147 + 24 len 8]
        _149 = mem[_147 + 32]
        require mem[_147 + 32] == mem[_147 + 48 len 16]
        require mem[_147 + 64] == mem[_147 + 88 len 8]
        if idx >= degens.length:
            revert with 'NH{q', 50
        mem[0] = 3
        mem[mem[64] + 4] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[mem[64] + 36] = degens[idx]
        require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
        staticcall 0x1fc83f75499b7620d53757f0b01e2ae626aae530.balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args 0x130966628846bfd36ff31a822705796e8cb8c18d, degens[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _154 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _155 = mem[_154]
        require mem[_154] == mem[_154]
        mem[mem[64] + 4] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[mem[64] + 36] = _155
        mem[mem[64] + 68] = 0
        require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
        staticcall 0x1fc83f75499b7620d53757f0b01e2ae626aae530.toAmount(address rg1, uint256 rg2, bool rg3) with:
                gas gas_remaining wei
               args 0x130966628846bfd36ff31a822705796e8cb8c18d, _155, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _158 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_158] == mem[_158]
        if uint128(_149) > mem[_158]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0x1fc83f75499b7620d53757f0b01e2ae626aae530
            mem[mem[64] + 68] = uint128(_149)
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            call 0x130966628846bfd36ff31a822705796e8cb8c18d.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, 0x1fc83f75499b7620d53757f0b01e2ae626aae530, uint128(_149)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_165] == bool(mem[_165])
            if idx >= degens.length:
                revert with 'NH{q', 50
            mem[0] = 3
            mem[mem[64] + 36] = 0x1fc83f75499b7620d53757f0b01e2ae626aae530
            mem[mem[64] + 68] = degens[idx]
            mem[mem[64] + 100] = uint128(_149)
            mem[mem[64] + 132] = 0
            require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
            call 0x1fc83f75499b7620d53757f0b01e2ae626aae530.deposit(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0x130966628846bfd36ff31a822705796e8cb8c18d, 0x1fc83f75499b7620d53757f0b01e2ae626aae530, degens[idx], _149 << 128, 0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_170] == mem[_170]
            require mem[_170 + 32] == mem[_170 + 32]
        if idx >= degens.length:
            revert with 'NH{q', 50
        mem[0] = 3
        mem[mem[64]] = 0x476343ee00000000000000000000000000000000000000000000000000000000
        require ext_code.size(degens[idx])
        call degens[idx].withdrawFees() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
