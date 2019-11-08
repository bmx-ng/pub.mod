' Copyright (c) 2019 Bruce A Henderson
' All rights reserved.
' 
' Redistribution and use in source and binary forms, with or without
' modification, are permitted provided that the following conditions are met:
'     * Redistributions of source code must retain the above copyright
'       notice, this list of conditions and the following disclaimer.
'     * Redistributions in binary form must reproduce the above copyright
'       notice, this list of conditions and the following disclaimer in the
'       documentation and/or other materials provided with the distribution.
'     * Neither the name of the project nor the
'       names of its contributors may be used to endorse or promote products
'       derived from this software without specific prior written permission.
' 
' THIS SOFTWARE IS PROVIDED BY THE CONTRIBUTORS ``AS IS'' AND ANY
' EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
' WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
' DISCLAIMED. IN NO EVENT SHALL THE CONTRIBUTORS BE LIABLE FOR ANY
' DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
' (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
' LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
' ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
' (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
' SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
' 
SuperStrict

Module Pub.libopenmpt


ModuleInfo "CC_OPTS: -DLIBOPENMPT_BUILD"
ModuleInfo "CPP_OPTS: -std=c++17 -fexceptions"

Import "openmpt/*.h"
Import "openmpt/common/*.h"
Import "openmpt/build/svn_version/*.h"

' common
Import "openmpt/common/ComponentManager.cpp"
Import "openmpt/common/FileReader.cpp"
Import "openmpt/common/Logging.cpp"
Import "openmpt/common/misc_util.cpp"
Import "openmpt/common/mptAlloc.cpp"
Import "openmpt/common/mptCPU.cpp"
Import "openmpt/common/mptFileIO.cpp"
Import "openmpt/common/mptIO.cpp"
Import "openmpt/common/mptLibrary.cpp"
Import "openmpt/common/mptOS.cpp"
Import "openmpt/common/mptPathString.cpp"
Import "openmpt/common/mptRandom.cpp"
Import "openmpt/common/mptString.cpp"
Import "openmpt/common/mptStringBuffer.cpp"
Import "openmpt/common/mptStringFormat.cpp"
Import "openmpt/common/mptStringParse.cpp"
Import "openmpt/common/mptTime.cpp"
Import "openmpt/common/mptUUID.cpp"
Import "openmpt/common/mptWine.cpp"
Import "openmpt/common/Profiler.cpp"
Import "openmpt/common/serialization_utils.cpp"
Import "openmpt/common/version.cpp"

' libopenmpt
Import "openmpt/libopenmpt/*.h"
Import "openmpt/libopenmpt/libopenmpt_c.cpp"
Import "openmpt/libopenmpt/libopenmpt_cxx.cpp"
Import "openmpt/libopenmpt/libopenmpt_ext_impl.cpp"
Import "openmpt/libopenmpt/libopenmpt_impl.cpp"

' sounddsp
Import "openmpt/sounddsp/AGC.cpp"
Import "openmpt/sounddsp/DSP.cpp"
Import "openmpt/sounddsp/EQ.cpp"
Import "openmpt/sounddsp/Reverb.cpp"

' soundlib
Import "openmpt/soundlib/AudioCriticalSection.cpp"
Import "openmpt/soundlib/ContainerMMCMP.cpp"
Import "openmpt/soundlib/ContainerPP20.cpp"
Import "openmpt/soundlib/ContainerUMX.cpp"
Import "openmpt/soundlib/ContainerXPK.cpp"
Import "openmpt/soundlib/Dlsbank.cpp"
Import "openmpt/soundlib/Fastmix.cpp"
Import "openmpt/soundlib/InstrumentExtensions.cpp"
Import "openmpt/soundlib/ITCompression.cpp"
Import "openmpt/soundlib/ITTools.cpp"
Import "openmpt/soundlib/Load_669.cpp"
Import "openmpt/soundlib/Load_amf.cpp"
Import "openmpt/soundlib/Load_ams.cpp"
Import "openmpt/soundlib/Load_c67.cpp"
Import "openmpt/soundlib/Load_dbm.cpp"
Import "openmpt/soundlib/Load_digi.cpp"
Import "openmpt/soundlib/Load_dmf.cpp"
Import "openmpt/soundlib/Load_dsm.cpp"
Import "openmpt/soundlib/Load_dtm.cpp"
Import "openmpt/soundlib/Load_far.cpp"
Import "openmpt/soundlib/Load_gdm.cpp"
Import "openmpt/soundlib/Load_imf.cpp"
Import "openmpt/soundlib/Load_it.cpp"
Import "openmpt/soundlib/Load_itp.cpp"
Import "openmpt/soundlib/load_j2b.cpp"
Import "openmpt/soundlib/Load_mdl.cpp"
Import "openmpt/soundlib/Load_med.cpp"
Import "openmpt/soundlib/Load_mid.cpp"
Import "openmpt/soundlib/Load_mo3.cpp"
Import "openmpt/soundlib/Load_mod.cpp"
Import "openmpt/soundlib/Load_mt2.cpp"
Import "openmpt/soundlib/Load_mtm.cpp"
Import "openmpt/soundlib/Load_okt.cpp"
Import "openmpt/soundlib/Load_plm.cpp"
Import "openmpt/soundlib/Load_psm.cpp"
Import "openmpt/soundlib/Load_ptm.cpp"
Import "openmpt/soundlib/Load_s3m.cpp"
Import "openmpt/soundlib/Load_sfx.cpp"
Import "openmpt/soundlib/Load_stm.cpp"
Import "openmpt/soundlib/Load_stp.cpp"
Import "openmpt/soundlib/Load_uax.cpp"
Import "openmpt/soundlib/Load_ult.cpp"
Import "openmpt/soundlib/Load_wav.cpp"
Import "openmpt/soundlib/Load_xm.cpp"
Import "openmpt/soundlib/Message.cpp"
Import "openmpt/soundlib/MIDIEvents.cpp"
Import "openmpt/soundlib/MIDIMacros.cpp"
Import "openmpt/soundlib/MixerLoops.cpp"
Import "openmpt/soundlib/MixerSettings.cpp"
Import "openmpt/soundlib/MixFuncTable.cpp"
Import "openmpt/soundlib/mod_specifications.cpp"
Import "openmpt/soundlib/ModChannel.cpp"
Import "openmpt/soundlib/modcommand.cpp"
Import "openmpt/soundlib/ModInstrument.cpp"
Import "openmpt/soundlib/ModSample.cpp"
Import "openmpt/soundlib/ModSequence.cpp"
Import "openmpt/soundlib/modsmp_ctrl.cpp"
Import "openmpt/soundlib/MPEGFrame.cpp"
Import "openmpt/soundlib/OggStream.cpp"
Import "openmpt/soundlib/OPL.cpp"
Import "openmpt/soundlib/pattern.cpp"
Import "openmpt/soundlib/patternContainer.cpp"
Import "openmpt/soundlib/Paula.cpp"
Import "openmpt/soundlib/RowVisitor.cpp"
Import "openmpt/soundlib/S3MTools.cpp"
Import "openmpt/soundlib/SampleFormatFLAC.cpp"
Import "openmpt/soundlib/SampleFormatMediaFoundation.cpp"
Import "openmpt/soundlib/SampleFormatMP3.cpp"
Import "openmpt/soundlib/SampleFormatOpus.cpp"
Import "openmpt/soundlib/SampleFormats.cpp"
Import "openmpt/soundlib/SampleFormatVorbis.cpp"
Import "openmpt/soundlib/SampleIO.cpp"
Import "openmpt/soundlib/Snd_flt.cpp"
Import "openmpt/soundlib/Snd_fx.cpp"
Import "openmpt/soundlib/Sndfile.cpp"
Import "openmpt/soundlib/Sndmix.cpp"
Import "openmpt/soundlib/SoundFilePlayConfig.cpp"
Import "openmpt/soundlib/Tables.cpp"
Import "openmpt/soundlib/Tagging.cpp"
Import "openmpt/soundlib/tuning.cpp"
Import "openmpt/soundlib/tuningbase.cpp"
Import "openmpt/soundlib/tuningCollection.cpp"
Import "openmpt/soundlib/UMXTools.cpp"
Import "openmpt/soundlib/UpgradeModule.cpp"
Import "openmpt/soundlib/WAVTools.cpp"
Import "openmpt/soundlib/WindowedFIR.cpp"
Import "openmpt/soundlib/XMTools.cpp"

Import "openmpt/soundlib/plugins/DigiBoosterEcho.cpp"
Import "openmpt/soundlib/plugins/LFOPlugin.cpp"
Import "openmpt/soundlib/plugins/PluginManager.cpp"
Import "openmpt/soundlib/plugins/PlugInterface.cpp"

Import "openmpt/soundlib/plugins/dmo/Chorus.cpp"
Import "openmpt/soundlib/plugins/dmo/Compressor.cpp"
Import "openmpt/soundlib/plugins/dmo/Distortion.cpp"
Import "openmpt/soundlib/plugins/dmo/DMOPlugin.cpp"
Import "openmpt/soundlib/plugins/dmo/Echo.cpp"
Import "openmpt/soundlib/plugins/dmo/Flanger.cpp"
Import "openmpt/soundlib/plugins/dmo/Gargle.cpp"
Import "openmpt/soundlib/plugins/dmo/I3DL2Reverb.cpp"
Import "openmpt/soundlib/plugins/dmo/ParamEq.cpp"
Import "openmpt/soundlib/plugins/dmo/WavesReverb.cpp"
