using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DarkTonic.MasterAudio;

public class SoundManager : MonoBehaviour {

	[SoundGroupAttribute] public string HackingSound;
	public float HackingSoundVolume = 1f;
	[SoundGroupAttribute] public string EnterSound;
	public float EnterSoundVolume = 1f;
	[SoundGroupAttribute] public string JumpSound;
	public float JumpSoundVolume = 1f;
	[SoundGroupAttribute] public string StepSound;
	public float StepSoundVolume = 1f;

	public void PlayHackSound () {
		MasterAudio.PlaySound3DFollowTransformAndForget (HackingSound, transform, HackingSoundVolume);
	}

	public void StopHackingSound () {
		MasterAudio.StopAllOfSound(HackingSound);
	}

	public void PlayEnterSound () {
		MasterAudio.PlaySound3DFollowTransformAndForget (EnterSound, transform, EnterSoundVolume);
	}

	public void StopEnterSound () {
		MasterAudio.StopAllOfSound(EnterSound);
	}

	public void PlayJumpSound () {
		MasterAudio.PlaySound3DFollowTransformAndForget (JumpSound, transform, JumpSoundVolume);
	}

	public void StopJumpSound () {
		MasterAudio.StopAllOfSound(JumpSound);
	}

	public void PlayStepSound () {
		MasterAudio.PlaySound3DFollowTransformAndForget (StepSound, transform, StepSoundVolume);
	}

	public void StopStepSound () {
		MasterAudio.StopAllOfSound(StepSound);
	}
}
